import SwiftUI

struct SettingsView: View {
    let signOut: () -> Void

    var body: some View {
        List {
            Section {
                Button("Return to Sign In", action: signOut)
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    NavigationStack {
        SettingsView {}
    }
}
