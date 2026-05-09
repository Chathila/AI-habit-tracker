import Combine
import Foundation

@MainActor
final class HabitListViewModel: ObservableObject {
    @Published private(set) var habits: [Habit] = []
    @Published private(set) var isLoading = false
    @Published var errorMessage: String?

    private let habitService: HabitService

    init(habitService: HabitService = HabitService()) {
        self.habitService = habitService
    }

    var hasHabits: Bool {
        !habits.isEmpty
    }

    func clearPlaceholderData() {
        habits = []
        errorMessage = nil
    }
}
