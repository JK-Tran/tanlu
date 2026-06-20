// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tanlu_management/core/themes/app_colors.dart';
// import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
// import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
// import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail/chat_header.dart';
// import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail/chat_input.dart';
// import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail/message_list.dart';
// import 'dart:ui';
// import 'package:tanlu_management/core/di/injection_container.dart';

// class ChatDetailPage extends StatefulWidget {
//   final String conversationId;

//   const ChatDetailPage({
//     super.key,
//     required this.conversationId,
//   });

//   @override
//   State<ChatDetailPage> createState() => _ChatDetailPageState();
// }

// class _ChatDetailPageState extends State<ChatDetailPage> {
//   late ChatBloc _chatBloc;

//   @override
//   void initState() {
//     super.initState();
//     _chatBloc = sl<ChatBloc>();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider.value(
//       value: _chatBloc,
//       child: BlocBuilder<ChatBloc, ChatState>(
//         builder: (context, state) {
//           final conversation = state.conversations.firstWhere(
//             (c) => c.id == widget.conversationId,
//             orElse: () => Conversation(id: '', name: '', lastMessage: '', timestamp: '', isUnread: false, avatarUrl: ''),
//           );

//           if (conversation.id.isEmpty) {
//             return Scaffold(
//               backgroundColor: AppColors.grayBg,
//               appBar: AppBar(backgroundColor: AppColors.primary),
//               body: Center(child: Text('Không tìm thấy cuộc hội thoại')),
//             );
//           }

//           return Scaffold(
//         backgroundColor: AppColors.grayBg,
//         body: Stack(
//           children: [
//             // Background Gradient
//             Positioned.fill(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color(0xFFF3E8FF),
//                       Color(0xFFF8F8FC),
//                     ], // Light purple to grey bg
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//               ),
//             ),
//             // Decorative Blob 1
//             Positioned(
//               top: -50,
//               right: -50,
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.primary.withValues(alpha: 0.15),
//                 ),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
//                   child: Container(color: Colors.transparent),
//                 ),
//               ),
//             ),
//             // Decorative Blob 2
//             Positioned(
//               bottom: 150,
//               left: -100,
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.info.withValues(alpha: 0.1),
//                 ),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
//                   child: Container(color: Colors.transparent),
//                 ),
//               ),
//             ),
//             // Main Content
//             SafeArea(
//               bottom: false,
//               child: Column(
//                 children: [
//                   ChatDetailHeader(conversation: conversation),
//                   Expanded(
//                     child: BlocBuilder<ChatBloc, ChatState>(
//                       builder: (context, state) {
//                         return MessageList(
//                           messages: state.currentMessages,
//                           isLoading: state.isLoading,
//                         );
//                       },
//                     ),
//                   ),
//                   ChatInput(
//                     conversationId: conversation.id,
//                     chatBloc: _chatBloc,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
