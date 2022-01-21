// Error Class For Value Failures
class UnexpectedValueError<T> extends Error{
 T failure;
 UnexpectedValueError({required this.failure});
  @override
  String toString() {
    return Error.safeToString("Unexpected Value Failure at an unrecoverable point. Terminating. Failure was $failure");
  }
}