import SwiftUI

struct ManualCheckInView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "checklist.checked")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Manual Check-In")
                .font(.title)
                .fontWeight(.semibold)

            Text("Checklist controls for each active habit will appear here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Manual")
    }
}

#Preview {
    NavigationStack {
        ManualCheckInView()
    }
}
