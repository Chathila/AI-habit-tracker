import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.badge.plus")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Create Account")
                .font(.title)
                .fontWeight(.semibold)

            Text("Email signup will be added in the authentication phase.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Register")
    }
}

#Preview {
    NavigationStack {
        RegisterView()
    }
}
