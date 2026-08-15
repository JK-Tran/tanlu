import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatContactsSheet extends StatefulWidget {
  const ChatContactsSheet({super.key, required this.bloc});

  final ChatBloc bloc;

  static Future<int?> show(BuildContext context, ChatBloc bloc) {
    return showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (_) => ChatContactsSheet(bloc: bloc),
    );
  }

  @override
  State<ChatContactsSheet> createState() => _ChatContactsSheetState();
}

class _ChatContactsSheetState extends State<ChatContactsSheet> {
  @override
  void initState() {
    super.initState();
    widget.bloc.add(const ChatEvent.loadContacts());
  }

  void _onContactTap(ChatContact contact) {
    widget.bloc.add(
      ChatEvent.initConversation(contact.id, (conversationId) {
        Navigator.of(context).pop(conversationId);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          final allContacts = state.contacts;

          return Container(
            height: MediaQuery.of(context).size.height * 0.75,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.grayLight,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                AppText.h2(
                  context.l10n.chatSelectContact,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  color: AppColors.grayDark,
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: state.isLoadingContacts
                      ? const Center(child: CircularProgressIndicator())
                      : allContacts.isEmpty
                      ? Center(
                          child: AppText.b1(
                            context.l10n.chatNoContacts,
                            color: AppColors.grayMedium,
                          ),
                        )
                      : GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 24.h,
                                crossAxisSpacing: 8.w,
                                childAspectRatio: 0.7,
                              ),
                          itemCount: allContacts.length,
                          itemBuilder: (context, index) {
                            final contact = allContacts[index];
                            return InkWell(
                              borderRadius: BorderRadius.circular(12.r),
                              onTap: state.isInitializingChat
                                  ? null
                                  : () => _onContactTap(contact),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      AppAvatar(
                                        name: contact.fullName,
                                        imageUrl: contact.avatarUrl,
                                        size: 56,
                                      ),
                                      if (state.onlineUserIds.contains(
                                        contact.id,
                                      ))
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 14.w,
                                            height: 14.w,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF4CAF50),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  AppText.t1(
                                    contact.fullName
                                        .split(' ')
                                        .last, // Hiển thị tên cuối để gọn
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grayDark,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                  ),
                                  if (contact.childrenText.isNotEmpty) ...[
                                    SizedBox(height: 2.h),
                                    AppText.t1(
                                      contact.childrenText,
                                      color: AppColors.grayMedium,
                                      fontSize: 10.sp,
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    ),
                                  ],
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
