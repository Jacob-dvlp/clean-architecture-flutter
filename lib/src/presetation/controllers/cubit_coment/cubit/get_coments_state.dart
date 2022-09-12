part of 'get_coments_cubit.dart';

abstract class GetComentsState extends Equatable {
  const GetComentsState();

  @override
  List<Object> get props => [];
}

class GetComentsInitial extends GetComentsState {
  @override
  List<Object> get props => [];
}

class GetComentsLoading extends GetComentsState {
  @override
  List<Object> get props => [];
}

class GetComentsSuccess extends GetComentsState {
  final List<ComentsEntity> coments;
  const GetComentsSuccess({required this.coments});
  @override
  List<Object> get props => [coments];
}

class GetComentsError extends GetComentsState {
  @override
  List<Object> get props => [];
}
