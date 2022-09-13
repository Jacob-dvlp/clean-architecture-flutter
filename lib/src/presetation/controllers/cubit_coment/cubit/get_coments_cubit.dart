import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:clean_archecterter/src/layers/domain/entitys/post_entity.dart';
import 'package:equatable/equatable.dart';

import '../../../../layers/core/dependecies/coments/inject_dependecie_coments.dart'
    as comments;
import '../../../../layers/domain/entitys/coments_entity.dart';
import '../../../../layers/domain/usecases/coments/get_coments_usecase_abs.dart';

part 'get_coments_state.dart';

class GetComentsCubit extends Cubit<GetComentsState> {
  PostEntity? postEntity;
  final GetComentsUseCase getComentsUseCase;
  GetComentsCubit({required this.getComentsUseCase})
      : super(GetComentsInitial()) {
    getComents();
  }

  Future getComents() async {
    int id = comments.getIt.get<PostEntity>().idPost!;
    print(id);
    emit(GetComentsLoading());
    try {
      final response = await getComentsUseCase.callComents(id);

      emit(GetComentsSuccess(coments: response));
      if (comments.getIt.isRegistered<PostEntity>()) {
        comments.getIt.unregister<PostEntity>(instance: id);
      }
    } on SocketOption {
      emit(GetComentsError());
    } catch (e) {
      emit(GetComentsError());
    }
  }
}
