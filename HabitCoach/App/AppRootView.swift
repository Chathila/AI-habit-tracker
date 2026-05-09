import SwiftUI

struct AppRootView: View {
    @State private var isSignedIn = false

    var body: some View {
        Group {
            if isSignedIn {
                MainTabView {
                    isSignedIn = false
                }
            } else {
                LoginView {
                    isSignedIn = true
                }
            }
        }
    }
}

private struct MainTabView: View {
    let signOut: () -> Void

    var body: some View {
        TabView {
            NavigationStack {
                DashboardView()
            }
            .tabItem {
                Label("Dashboard", systemImage: "house")
            }

            NavigationStack {
                HabitListView()
            }
            .tabItem {
                Label("Habits", systemImage: "checklist")
            }

            NavigationStack {
                CheckInModeSelectionView()
            }
            .tabItem {
                Label("Check-In", systemImage: "checkmark.circle")
            }

            NavigationStack {
                HistoryView()
            }
            .tabItem {
                Label("History", systemImage: "calendar")
            }

            NavigationStack {
                SettingsView(signOut: signOut)
            }
            .tabItem {
                Label("Settings", systemImage: "gearshape")
            }
        }
    }
}

#Preview {
    AppRootView()
}
