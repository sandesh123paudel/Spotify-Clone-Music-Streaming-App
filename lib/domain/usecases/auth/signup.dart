import 'package:dartz/dartz.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';

import '../../../core/usecase/usecase.dart';
import '../../../data/models/auth/create_user_req.dart';
import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
