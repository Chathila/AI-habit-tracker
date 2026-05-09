import Foundation

final class NotificationService {
    func requestAuthorization() async throws -> Bool {
        throw PlaceholderServiceError.notImplemented("Notification authorization")
    }

    func scheduleEveningReminders() async throws {
        throw PlaceholderServiceError.notImplemented("Schedule evening reminders")
    }

    func cancelPendingCheckInReminders() async {
    }
}
