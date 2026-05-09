import Foundation

enum CheckInStatus: String, Codable, CaseIterable, Equatable {
    case inProgress = "in_progress"
    case completed
    case missed
}

struct CheckIn: Identifiable, Codable, Equatable {
    let id: UUID
    var userId: UUID
    var checkInDate: Date
    var status: CheckInStatus
    var createdAt: Date
    var completedAt: Date?
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        userId: UUID,
        checkInDate: Date,
        status: CheckInStatus = .inProgress,
        createdAt: Date = .now,
        completedAt: Date? = nil,
        updatedAt: Date = .now
    ) {
        self.id = id
        self.userId = userId
        self.checkInDate = checkInDate
        self.status = status
        self.createdAt = createdAt
        self.completedAt = completedAt
        self.updatedAt = updatedAt
    }
}
