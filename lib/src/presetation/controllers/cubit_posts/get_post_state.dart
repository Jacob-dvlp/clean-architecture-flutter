part of 'get_post_cubit.dart';

abstract class GetPostState extends Equatable {
  const GetPostState();
  @override
  List<Object?> get props => [];
}

class GetPostInitial extends GetPostState {
  @override
  List<Object?> get props => [];
}

class GetPostLoading extends GetPostState {
  @override
  List<Object?> get props => [];
}

class GetPostSuccess extends GetPostState {
  final List<PostEntity> postEntity;
  const GetPostSuccess({required this.postEntity});
  @override
  List<Object?> get props => [postEntity];
}

class GetPostErros extends GetPostState {
  @override
  List<Object?> get props => [];
}
