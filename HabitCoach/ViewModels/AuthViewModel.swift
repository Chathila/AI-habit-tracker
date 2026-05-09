import Combine
import Foundation

@MainActor
final class AuthViewModel: ObservableObject {
    enum AuthState: Equatable {
        case signedOut
        case signedIn(userId: UUID)
    }

    @Published private(set) var state: AuthState = .signedOut
    @Published var email = ""
    @Published var password = ""
    @Published private(set) var isLoading = false
    @Published var errorMessage: String?

    private let authService: AuthService

    init(authService: AuthService = AuthService()) {
        self.authService = authService
    }

    func previewSignIn() {
        state = .signedIn(userId: UUID())
        errorMessage = nil
    }

    func signOut() {
        state = .signedOut
        email = ""
        password = ""
        errorMessage = nil
    }
}
