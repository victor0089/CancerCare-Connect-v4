import SwiftUI

struct HealthDataView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Health Data")
                    .font(.title)

                NavigationLink(destination: WebSocketView()) {
                    Text("View Health Data")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("CancerCare Connect")
        }
    }
}
