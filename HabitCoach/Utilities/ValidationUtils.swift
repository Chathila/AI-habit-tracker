import Foundation

enum ValidationUtils {
    static func isNonEmpty(_ value: String) -> Bool {
        !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    static func isShortNote(_ value: String, maxWords: Int = 10) -> Bool {
        let words = value
            .split { $0.isWhitespace || $0.isNewline }

        return words.count <= maxWords
    }
}
