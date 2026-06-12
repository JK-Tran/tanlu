import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_header.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/contact_list.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/conversation_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends BasePageState<ChatPage, ChatBloc> {
  bool _isCreatingConversation = false;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    bloc.add(const ChatStarted());
  }

  @override
  EdgeInsetsGeometry? get pagePadding => null;

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.4, 1.0],
            colors: [
              Color(0xFFF3E8FF), // Light purple
              Color(0xFFFAF5FF), // Lighter purple
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: BlocConsumer<ChatBloc, ChatState>(
            listener: (context, state) {
              if (_isCreatingConversation && !state.isSubmitting) {
                _isCreatingConversation = false;
                if (state.submitError.isEmpty &&
                    state.conversations.isNotEmpty) {
                  final newConversation = state.conversations.first;
                  context.pushNamed(
                    'chat-detail',
                    extra: {'conversation': newConversation, 'chatBloc': bloc},
                  );
                }
              }
            },
            builder: (context, state) {
              final filteredContacts = state.contacts.where((c) {
                if (_searchQuery.isEmpty) return true;
                return c.fullName.toLowerCase().contains(
                  _searchQuery.toLowerCase(),
                );
              }).toList();

              final filteredConversations = state.conversations.where((c) {
                if (_searchQuery.isEmpty) return true;

                String name = c.name;
                if (c.type == 'PRIVATE') {
                  final currentUser = context.read<AppBloc>().currentUser;
                  final otherParticipant = c.participants.firstWhereOrNull(
                    (p) => p.userId != currentUser?.id,
                  );
                  if (otherParticipant?.user != null) {
                    name = otherParticipant!.user!.fullName;
                  }
                }
                return name.toLowerCase().contains(_searchQuery.toLowerCase());
              }).toList();

              return Column(
                children: [
                  const ChatHeader(),
                  ChatSearchBar(
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                  ContactList(
                    contacts: filteredContacts,
                    onlineUserIds: state.onlineUserIds,
                    onContactTap: (contact) {
                      final existing = state.conversations.firstWhereOrNull((
                        c,
                      ) {
                        if (c.type != 'PRIVATE') return false;
                        return c.participants.any(
                          (p) => p.userId == contact.id,
                        );
                      });

                      if (existing != null) {
                        bloc.add(SelectConversation(existing));
                        context.pushNamed(
                          'chat-detail',
                          extra: {'conversation': existing, 'chatBloc': bloc},
                        );
                      } else {
                        _isCreatingConversation = true;
                        bloc.add(
                          CreateChatConversation(
                            participantIds: [contact.id],
                            type: 'PRIVATE',
                            name: contact.fullName,
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 4.h),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.r),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.r),
                        ),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            bloc.add(const FetchContacts());
                            bloc.add(const FetchConversations());
                          },
                          child: CustomScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            slivers: [
                              ConversationList(
                                conversations: filteredConversations,
                                chatBloc: bloc,
                                onlineUserIds: state.onlineUserIds,
                              ),
                              SliverPadding(
                                padding: EdgeInsets.only(bottom: 24.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
