import Foundation

struct Profile: Identifiable, Codable, Equatable {
    let id: UUID
    var email: String
    var displayName: String?
    var timezone: String
    var reminderStartTime: String
    var reminderEndTime: String
    var createdAt: Date
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        email: String,
        displayName: String? = nil,
        timezone: String = "America/Edmonton",
        reminderStartTime: String = "18:00",
        reminderEndTime: String = "23:59",
        createdAt: Date = .now,
        updatedAt: Date = .now
    ) {
        self.id = id
        self.email = email
        self.displayName = displayName
        self.timezone = timezone
        self.reminderStartTime = reminderStartTime
        self.reminderEndTime = reminderEndTime
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
