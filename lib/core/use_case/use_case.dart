import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';

abstract class UseCase<Entity, Params> {
  Future<Either<NetworkExceptions, Entity>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
