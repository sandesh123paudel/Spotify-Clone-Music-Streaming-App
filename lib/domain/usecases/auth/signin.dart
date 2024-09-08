import 'package:dartz/dartz.dart';
import 'package:musicplayer/data/models/auth/signin_user_req.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';

import '../../../core/usecase/usecase.dart';
import '../../../data/models/auth/create_user_req.dart';
import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}
