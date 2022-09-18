// import 'package:dartz/dartz.dart';

// import '../../../domain/entites/post_entity.dart';
// import '../../dto/post_dto.dart';
// import '../get_post_datasources.dart';

// class GetPostDataLocalSourceImplemente implements GetPostDatasources {
//   final GetPostDatasources getPostDatasources;
//   final unita = {
//     'id': 1,
//     'title': 'Adalberto da Costa Junior',
//     'body': 'Harternancia'
//   };
//   final mpla = {'id': 2, 'title': 'JLO', 'body': 'Corrupção'};

//   GetPostDataLocalSourceImplemente(this.getPostDatasources);

//   @override
//   Future<Either<Exception, PostEntity> > callPost() async {
//     try {
//       if (id == 1) {
//         //  return Right(PostDto.fromMap(unita));
//       }
//       return Right(PostDto.fromMap(mpla));
//     } catch (e) {
//       //  return Left(Exception("Erro in datasources"));
//     }
//   }
// }
