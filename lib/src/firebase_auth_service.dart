import 'package:abstractions/identity.dart';
import 'package:types_for_auth/types_for_auth.dart';

abstract class FirebaseAuthService implements IdentitySubsystem {
  // Functions to get user details if there is a signed in user
  @override
  Future<String?>? getCurrentIdToken();

  @override
  String? getCurrentUserId();

  @override
  Future<Set<ProviderEnum>> retrieveProvidersFor(String email);

  @override
  Stream<UserAuthState> get onAuthStateChange;

  @override
  Future<UserAuthState> signInAnonymously();

  @override
  Future<UserAuthState> signUpWithEmailAndPassword(
      String email, String password);

  @override
  Future<UserAuthState> signInWithEmailAndPassword(
      String email, String password);

  @override
  Future<UserAuthState> signInWithApple(
      {required String idToken, required String rawNonce});

  @override
  Future<UserAuthState> signInWithGoogle(
      {required String accessToken, required String idToken});

  @override
  Future<void> signOut();

  @override
  Future<UserAuthState> linkGoogleAccount(
      {required String accessToken, required String idToken});

  @override
  Future<UserAuthState> linkAppleAccount(
      {required String idToken, required String rawNonce});
}
