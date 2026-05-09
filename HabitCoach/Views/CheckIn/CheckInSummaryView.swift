import SwiftUI

struct CheckInSummaryView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "list.bullet.clipboard")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Check-In Summary")
                .font(.title)
                .fontWeight(.semibold)

            Text("Completed habit answers will be summarized here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Summary")
    }
}

#Preview {
    NavigationStack {
        CheckInSummaryView()
    }
}
