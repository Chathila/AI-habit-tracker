import SwiftUI

struct HabitListView: View {
    var body: some View {
        List {
            Section {
                HabitRow(title: "Morning walk", subtitle: "Sample habit")
                HabitRow(title: "Read", subtitle: "Sample habit")
            }

            Section {
                NavigationLink {
                    HabitFormView()
                } label: {
                    Label("Open Habit Form", systemImage: "plus")
                }
            }
        }
        .navigationTitle("Habits")
    }
}

#Preview {
    NavigationStack {
        HabitListView()
    }
}
