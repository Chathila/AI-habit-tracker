import SwiftUI

struct ErrorBanner: View {
    let message: String

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundStyle(.red)

            Text(message)
                .font(.subheadline)
                .foregroundStyle(.primary)

            Spacer(minLength: 0)
        }
        .padding()
        .background(.red.opacity(0.12), in: RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    ErrorBanner(message: "Something went wrong.")
        .padding()
}
