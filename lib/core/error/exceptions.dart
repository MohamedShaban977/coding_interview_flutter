import 'package:equatable/equatable.dart';





class CacheException extends Equatable implements Exception {
  final String? message;

  const CacheException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() => '$message';
}

class LocalException extends CacheException {
  const LocalException({required String? message})
      : super("Local Cache Exception: $message");
}