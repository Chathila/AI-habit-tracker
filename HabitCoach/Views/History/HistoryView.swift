import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "calendar")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("History")
                .font(.title)
                .fontWeight(.semibold)

            Text("Completed check-ins will appear here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("History")
    }
}

#Preview {
    NavigationStack {
        HistoryView()
    }
}
