import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/networking/api_error_model.dart';
import '../data/services/chats/chat_services.dart';
import '../data/services/chats/hunde_erorr_firebase.dart';
part 'chat_state.dart';

// class ChatCubit extends Cubit<ChatState> {
//   final ChatService chatService;

//   ChatCubit({required this.chatService}) : super(ChatInitial());

//   Future<void> sendMessage(String message, String sendEmail) async {
//     emit(ChatLoading());

//     try {
//       await chatService.sendMessage(message, sendEmail);
//       emit(MessageSentSuccess());

//       // إعادة تعيين الحالة بعد ثانية
//       await Future.delayed(const Duration(seconds: 1));
//       if (!isClosed) emit(ChatInitial());

//     } catch (error) {
//       final apiError = ErrorHandler.handle(error);
//       emit(ChatError(apiError));
//     }
//   }

//   Stream<QuerySnapshot> getMessages(String sendEmail) {
//     return chatService.getMessages(sendEmail).handleError((error) {
//       final apiError = ErrorHandler.handle(error);
//       if (!isClosed) emit(ChatError(apiError));
//     });
//   }

//   void resetState() {
//     if (!isClosed) emit(ChatInitial());
//   }
// }

// class ChatCubit extends Cubit<ChatState> {
//   final ChatService chatService;
//   Stream<QuerySnapshot>? _messagesStream;
//   StreamSubscription<QuerySnapshot>? _messagesSubscription;

//   ChatCubit({
//     required this.chatService,
//   }) : super(ChatInitial()) {
//     // _initializeMessagesStream();
//   }

//   void initializeMessagesStream(String sendEmail) {
//     emit(ChatLoading());

//     try {
//       _messagesStream = chatService.getMessages(sendEmail);

//       _messagesSubscription = _messagesStream?.listen(
//         (querySnapshot) {
//           final messages = querySnapshot.docs;
//           messages.sort((a, b) {
//             final aTimestamp = a['timestamp'] as Timestamp;
//             final bTimestamp = b['timestamp'] as Timestamp;
//             return aTimestamp.compareTo(bTimestamp);
//           });
//           log('Loaded $messages messages');
//           log('Loaded ${messages.length} messages');

//           emit(MessagesLoaded(messages));
//         },
//         onError: (error) {
//           final apiError = ErrorHandler.handle(error);
//           emit(ChatError(apiError));
//         },
//       );
//     } catch (error) {
//       final apiError = ErrorHandler.handle(error);
//       emit(ChatError(apiError));
//     }
//   }

//   Future<void> sendMessage(String message, String sendEmail) async {
//     emit(ChatLoading());

//     try {
//       await chatService.sendMessage(message, sendEmail);
//       emit(MessageSentSuccess());

//       // العودة إلى حالة تحميل الرسائل بعد الإرسال
//       await Future.delayed(const Duration(milliseconds: 500));
//       if (!isClosed) initializeMessagesStream(sendEmail);
//     } catch (error) {
//       final apiError = ErrorHandler.handle(error);
//       emit(ChatError(apiError));
//     }
//   }

//   @override
//   Future<void> close() {
//     _messagesSubscription?.cancel();
//     return super.close();
//   }

//   void reloadMessages(String sendEmail) {
//     initializeMessagesStream(sendEmail);
//   }
// }

class ChatCubit extends Cubit<ChatState> {
  final ChatService chatService;
  StreamSubscription<QuerySnapshot>? _messagesSubscription;

  ChatCubit({required this.chatService}) : super(ChatInitial());

  void initializeMessagesStream(String sendEmail) {
    emit(ChatLoading());

    // ألغي أي subscription قديم
    _messagesSubscription?.cancel();

    try {
      final messagesStream = chatService.getMessages(sendEmail);

      _messagesSubscription = messagesStream.listen(
        (querySnapshot) {
          if (isClosed) return; // ✅ تشيك قبل أي emit

          final messages = querySnapshot.docs;
          messages.sort((a, b) {
            final aTimestamp = a['timestamp'] as Timestamp;
            final bTimestamp = b['timestamp'] as Timestamp;
            return aTimestamp.compareTo(bTimestamp);
          });
          log('Loaded $messages messages');
          log('Loaded ${messages.length} messages');
          emit(MessagesLoaded(messages));
        },
        onError: (error) {
          if (isClosed) return; // ✅ تشيك قبل أي emit
          final apiError = ErrorHandler.handle(error);
          emit(ChatError(apiError));
        },
      );
    } catch (error) {
      if (isClosed) return;
      final apiError = ErrorHandler.handle(error);
      emit(ChatError(apiError));
    }
  }

  Future<void> sendMessage(String message, String sendEmail) async {
    emit(ChatLoading());

    try {
      await chatService.sendMessage(message, sendEmail);
      emit(MessageSentSuccess());

      // إعادة تحميل الرسائل بعد الإرسال
      if (!isClosed) {
        await Future.delayed(const Duration(milliseconds: 500));
        if (!isClosed) initializeMessagesStream(sendEmail);
      }
    } catch (error) {
      if (isClosed) return;
      final apiError = ErrorHandler.handle(error);
      emit(ChatError(apiError));
    }
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    return super.close();
  }

  void reloadMessages(String sendEmail) {
    initializeMessagesStream(sendEmail);
  }
}
