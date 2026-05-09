import Combine
import Foundation

@MainActor
final class CheckInViewModel: ObservableObject {
    @Published var selectedDate: Date
    @Published private(set) var activeHabits: [Habit] = []
    @Published private(set) var answers: [CheckInAnswer] = []
    @Published private(set) var isSubmitting = false
    @Published var errorMessage: String?

    private let checkInService: CheckInService

    init(
        selectedDate: Date = .now,
        checkInService: CheckInService = CheckInService()
    ) {
        self.selectedDate = selectedDate
        self.checkInService = checkInService
    }

    var canSubmit: Bool {
        !activeHabits.isEmpty && answers.count == activeHabits.count
    }

    func resetPlaceholderAnswers() {
        answers = []
        errorMessage = nil
    }
}
