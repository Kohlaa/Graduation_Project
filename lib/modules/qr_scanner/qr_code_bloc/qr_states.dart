import '../../../api_model/create_chat_model.dart';

abstract class QrCodeStates{}

class QrCodeInitialState extends QrCodeStates{}

class SetState extends QrCodeStates{}

class ShowScreenState extends QrCodeStates{}

class LoadImageState extends QrCodeStates{}

class CreateChatLoadingState extends QrCodeStates {}

class CreateChatSuccessState extends QrCodeStates {
  final CreateChatModel createChatModel;
  CreateChatSuccessState(this.createChatModel);
}

class CreateChatErrorState extends QrCodeStates {
  final dynamic error;
  CreateChatErrorState(this.error);
}

