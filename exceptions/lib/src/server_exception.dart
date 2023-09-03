/// {@template server_exception}
/// Exception that occurs on server side
/// {@endtemplate}
class ServerException implements Exception {
  /// {@macro server_exception}
  const ServerException(this.message);

  /// Message
  final String message;

  @override
  String toString() => 'ServerException: $message';
}
