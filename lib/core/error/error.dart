class UnhandledError extends Error{

  @override
  String toString() {
    return Error.safeToString("Unexpected Error Happened. Terminating");
  }
}