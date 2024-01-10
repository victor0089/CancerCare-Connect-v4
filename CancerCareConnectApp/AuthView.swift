import SwiftUI

struct AuthView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.title)

                NavigationLink(destination: HealthDataView()) {
                    Text("Login")
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
