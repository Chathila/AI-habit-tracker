import SwiftUI

struct CheckInModeSelectionView: View {
    var body: some View {
        List {
            Section {
                NavigationLink {
                    ManualCheckInView()
                } label: {
                    Label("Manual Check-In", systemImage: "checklist.checked")
                }

                NavigationLink {
                    ConversationalCheckInView()
                } label: {
                    Label("Conversational Check-In", systemImage: "message")
                }
            }

            Section {
                NavigationLink {
                    CheckInSummaryView()
                } label: {
                    Label("Summary", systemImage: "list.bullet.clipboard")
                }
            }
        }
        .navigationTitle("Check-In")
    }
}

#Preview {
    NavigationStack {
        CheckInModeSelectionView()
    }
}
