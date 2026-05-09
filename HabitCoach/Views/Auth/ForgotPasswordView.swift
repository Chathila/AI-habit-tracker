import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "key")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Forgot Password")
                .font(.title)
                .fontWeight(.semibold)

            Text("Password reset email support will be added in the authentication phase.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Reset Password")
    }
}

#Preview {
    NavigationStack {
        ForgotPasswordView()
    }
}
