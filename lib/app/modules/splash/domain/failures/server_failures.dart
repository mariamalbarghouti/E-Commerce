import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failures.freezed.dart';

@freezed
abstract class GetSignedInUserServerFailure
    with _$GetSignedInUserServerFailure {
  const factory GetSignedInUserServerFailure.userIsSignedOut(
      {required String msg}) = _UserIsSignedOut;
}
