// Authentication Error
class AuthenticationError extends Error{
  @override
  String toString() {
    return Error.safeToString("You Can Not Dealing User's Data Because Of Authentication Issue");
  }
}