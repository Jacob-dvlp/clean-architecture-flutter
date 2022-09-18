import 'dart:io';

import 'package:clean_archecterter/src/layers/domain/usecases/comments/imports.dart';
import 'package:clean_archecterter/src/presetation/ui/comment_page/imports.dart';
import 'package:equatable/equatable.dart';

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
