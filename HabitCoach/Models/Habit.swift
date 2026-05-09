import Foundation

struct Habit: Identifiable, Codable, Equatable {
    let id: UUID
    var userId: UUID
    var name: String
    var description: String?
    var sortOrder: Int
    var isActive: Bool
    var createdAt: Date
    var updatedAt: Date

    init(
        id: UUID = UUID(),
        userId: UUID,
        name: String,
        description: String? = nil,
        sortOrder: Int = 0,
        isActive: Bool = true,
        createdAt: Date = .now,
        updatedAt: Date = .now
    ) {
        self.id = id
        self.userId = userId
        self.name = name
        self.description = description
        self.sortOrder = sortOrder
        self.isActive = isActive
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
