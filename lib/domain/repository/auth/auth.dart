import 'package:dartz/dartz.dart';
import 'package:musicplayer/data/models/auth/create_user_req.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<void> signin();
}
