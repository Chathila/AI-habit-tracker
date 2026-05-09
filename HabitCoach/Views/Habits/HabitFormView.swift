import SwiftUI

struct HabitFormView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "square.and.pencil")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Habit Form")
                .font(.title)
                .fontWeight(.semibold)

            Text("Create and edit habit fields will appear here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Habit Form")
    }
}

#Preview {
    NavigationStack {
        HabitFormView()
    }
}
