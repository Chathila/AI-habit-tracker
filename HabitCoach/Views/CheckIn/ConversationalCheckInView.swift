import SwiftUI

struct ConversationalCheckInView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "message")
                .font(.system(size: 44))
                .foregroundStyle(.tint)

            Text("Conversational Check-In")
                .font(.title)
                .fontWeight(.semibold)

            Text("A guided habit-by-habit conversation will appear here.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Conversation")
    }
}

#Preview {
    NavigationStack {
        ConversationalCheckInView()
    }
}
