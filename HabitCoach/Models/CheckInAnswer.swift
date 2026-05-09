import Foundation

enum CheckInAnswerStatus: String, Codable, CaseIterable, Equatable {
    case completed
    case notCompleted = "not_completed"
    case skipped
}

struct CheckInAnswer: Identifiable, Codable, Equatable {
    let id: UUID
    var checkInId: UUID
    var habitId: UUID?
    var habitNameSnapshot: String
    var habitDescriptionSnapshot: String?
    var status: CheckInAnswerStatus
    var note: String?
    var createdAt: Date
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        checkInId: UUID,
        habitId: UUID?,
        habitNameSnapshot: String,
        habitDescriptionSnapshot: String? = nil,
        status: CheckInAnswerStatus,
        note: String? = nil,
        createdAt: Date = .now,
        updatedAt: Date = .now
    ) {
        self.id = id
        self.checkInId = checkInId
        self.habitId = habitId
        self.habitNameSnapshot = habitNameSnapshot
        self.habitDescriptionSnapshot = habitDescriptionSnapshot
        self.status = status
        self.note = note
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
