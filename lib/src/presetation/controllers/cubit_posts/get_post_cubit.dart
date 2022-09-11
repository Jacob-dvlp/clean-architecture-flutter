import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../layers/domain/entitys/post_entity.dart';
import '../../../layers/domain/usecases/posts/get_post_usecase_abs.dart';

part 'get_post_state.dart';

class GetPostCubit extends Cubit<GetPostState> {
  final GetPostUsecase getPostUsecase;
  GetPostCubit({required this.getPostUsecase}) : super(GetPostInitial()) {
    getPost();
  }

  Future getPost() async {
    emit(GetPostLoading());
    try {
      final modelPost = await getPostUsecase.callPost();
      emit(GetPostSuccess(postEntity: modelPost));
    } on SocketException {
      emit(GetPostErros());
    } catch (_) {
      emit(GetPostErros());
    }
  }
}
