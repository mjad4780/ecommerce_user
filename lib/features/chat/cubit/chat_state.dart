part of 'chat_cubit.dart';

sealed class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class MessageSentSuccess extends ChatState {}

class ChatError extends ChatState {
  final ApiErrorModel error;
  ChatError(this.error);
}

class MessagesLoaded extends ChatState {
  final List<QueryDocumentSnapshot> messages;
  MessagesLoaded(this.messages);
}
