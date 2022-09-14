import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../layers/core/dependecies/coments/imports.dart';
import '../../../../layers/domain/entitys/comments_entity.dart';
import '../../../../layers/domain/entitys/post_entity.dart';
import '../../../../layers/domain/usecases/comments/get_coments_usecase_abs.dart';

part 'get_comments_state.dart';

class GetCommentsCubit extends Cubit<GetCommentsState> {
  PostEntity? postEntity;
  final GetCommentsUseCase getComentsUseCase;
  GetCommentsCubit({required this.getComentsUseCase})
      : super(GetComentsInitial());

  Future getComents({int? value}) async {
    emit(GetComentsLoading());
    try {
      final response = await getComentsUseCase.callComents(value!);

      emit(GetComentsSuccess(coments: response));
    } on SocketOption {
      emit(GetComentsError());
    } catch (e) {
      emit(GetComentsError());
    }
  }
}
