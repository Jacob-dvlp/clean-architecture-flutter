part of 'get_comments_cubit.dart';

abstract class GetCommentsState extends Equatable {
  const GetCommentsState();
  @override
  List<Object?> get props => [];
}

class GetComentsInitial extends GetCommentsState {
  @override
  List<Object?> get props => [];
}

class GetComentsLoading extends GetCommentsState {
  @override
  List<Object?> get props => [];
}

class GetComentsSuccess extends GetCommentsState {
  final List<CommentsEntite> coments;
  const GetComentsSuccess({required this.coments});
  @override
  List<Object?> get props => [coments];
}

class GetComentsError extends GetCommentsState {
  @override
  List<Object?> get props => [];
}
