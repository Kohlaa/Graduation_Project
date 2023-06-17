import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../api_model/create_chat_model.dart';
import '../../../network/local/cache_helper.dart';
import '../../../network/remote/dio_helper.dart';
import 'qr_states.dart';

class QrCodeCubit extends Cubit<QrCodeStates> {
  QrCodeCubit() : super(QrCodeInitialState());

  static QrCodeCubit get(context) => BlocProvider.of(context);

  CreateChatModel? createChatModel;

  void createChat(String email, String message,context) {
    Navigator.pop(context);
    emit(CreateChatLoadingState());

    Map<String, dynamic> data = {
      'email': email,
      'msg': message,
    };

    DioHelper.postData(
      url: 'notifications/send_notification',
      authentication: CacheHelper.getData(key: 'token'),
      data: data,
    ).then((value) {
      createChatModel = CreateChatModel.fromJson(value.data);
      print('create chat response: ${value.data.toString()}');
      emit(CreateChatSuccessState(createChatModel!));
    }).catchError((error) {
      emit(CreateChatErrorState(error));
      print('create chat error: ${error.toString()}');
    });
  }

  void setState() {
    emit(SetState());
  }
}
