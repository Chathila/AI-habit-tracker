import Foundation

final class HabitService {
    func fetchActiveHabits(for userId: UUID) async throws -> [Habit] {
        []
    }

    func createHabit(_ habit: Habit) async throws -> Habit {
        throw PlaceholderServiceError.notImplemented("Create habit")
    }

    func updateHabit(_ habit: Habit) async throws -> Habit {
        throw PlaceholderServiceError.notImplemented("Update habit")
    }

    func deactivateHabit(id: UUID) async throws {
        throw PlaceholderServiceError.notImplemented("Deactivate habit")
    }
}
