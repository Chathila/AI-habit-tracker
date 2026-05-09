import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "house")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Dashboard")
                .font(.title)
                .fontWeight(.semibold)

            Text("Today's habit overview will appear here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Dashboard")
    }
}

#Preview {
    NavigationStack {
        DashboardView()
    }
}
