import Foundation

final class AuthService {
    private(set) var currentUserId: UUID?

    func signIn(email: String, password: String) async throws -> UUID {
        throw PlaceholderServiceError.notImplemented("Email sign in")
    }

    func signUp(email: String, password: String, displayName: String?) async throws -> UUID {
        throw PlaceholderServiceError.notImplemented("Email sign up")
    }

    func resetPassword(email: String) async throws {
        throw PlaceholderServiceError.notImplemented("Password reset")
    }

    func signOut() async {
        currentUserId = nil
    }
}
