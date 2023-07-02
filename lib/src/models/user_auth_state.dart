import '../enums/signed_in_state.dart';

/// [UserAuthState] holds authorization & authentication state associated with
/// a particular user.
abstract class UserAuthState {
  SignedInState get signedIn;
  String? get uid;
  String? get displayName;
  String? get photoURL;
}
