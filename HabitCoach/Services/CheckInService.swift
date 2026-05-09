import Foundation

final class CheckInService {
    func fetchCheckIn(for userId: UUID, on date: Date) async throws -> CheckIn? {
        nil
    }

    func startCheckIn(for userId: UUID, on date: Date) async throws -> CheckIn {
        throw PlaceholderServiceError.notImplemented("Start check-in")
    }

    func saveAnswers(_ answers: [CheckInAnswer], for checkIn: CheckIn) async throws {
        throw PlaceholderServiceError.notImplemented("Save check-in answers")
    }

    func completeCheckIn(_ checkIn: CheckIn) async throws -> CheckIn {
        throw PlaceholderServiceError.notImplemented("Complete check-in")
    }
}
