import Foundation

enum PlaceholderServiceError: LocalizedError {
    case notImplemented(String)

    var errorDescription: String? {
        switch self {
        case .notImplemented(let operation):
            return "\(operation) is not implemented yet."
        }
    }
}

final class SupabaseClientProvider {
    static let shared = SupabaseClientProvider()

    private init() {}

    var isConfigured: Bool {
        false
    }
}
