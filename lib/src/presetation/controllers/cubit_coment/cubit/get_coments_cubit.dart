import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../layers/domain/entitys/coments_entity.dart';
import '../../../../layers/domain/usecases/coments/get_coments_usecase_abs.dart';

part 'get_coments_state.dart';

class GetComentsCubit extends Cubit<GetComentsState> {
  final GetComentsUseCase getComentsUseCase;
  GetComentsCubit({required this.getComentsUseCase})
      : super(GetComentsInitial()) {
    getComents();
  }

  Future getComents() async {
    emit(GetComentsLoading());
    try {
      final response = await getComentsUseCase.callComents();
      print(response);
      emit(GetComentsSuccess(coments: response));
    } on SocketOption {
      emit(GetComentsError());
    } catch (e) {
      emit(GetComentsError());
    }
  }
}
