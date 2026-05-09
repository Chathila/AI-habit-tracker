import Combine
import Foundation

@MainActor
final class DashboardViewModel: ObservableObject {
    @Published private(set) var todayCheckIn: CheckIn?
    @Published private(set) var activeHabits: [Habit] = []
    @Published private(set) var isLoading = false
    @Published var errorMessage: String?

    private let habitService: HabitService
    private let checkInService: CheckInService

    init(
        habitService: HabitService = HabitService(),
        checkInService: CheckInService = CheckInService()
    ) {
        self.habitService = habitService
        self.checkInService = checkInService
    }

    var hasCompletedToday: Bool {
        todayCheckIn?.status == .completed
    }

    func clearPlaceholderData() {
        todayCheckIn = nil
        activeHabits = []
        errorMessage = nil
    }
}
