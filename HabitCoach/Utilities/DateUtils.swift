import Foundation

enum DateUtils {
    static let displayDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()

    static func displayDate(_ date: Date) -> String {
        displayDateFormatter.string(from: date)
    }
}
