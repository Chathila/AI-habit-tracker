import SwiftUI

struct LoginView: View {
    let continueAsPreview: () -> Void

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Spacer()

                VStack(spacing: 8) {
                    Text(AppConfig.appName)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Daily check-ins, ready for setup.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                PrimaryButton("Preview App", systemImage: "arrow.right") {
                    continueAsPreview()
                }

                VStack(spacing: 12) {
                    NavigationLink("Create Account") {
                        RegisterView()
                    }

                    NavigationLink("Forgot Password?") {
                        ForgotPasswordView()
                    }
                }
                .font(.subheadline)

                Spacer()
            }
            .padding()
            .navigationTitle("Sign In")
        }
    }
}

#Preview {
    LoginView {}
}
