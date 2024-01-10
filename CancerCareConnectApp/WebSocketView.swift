import SwiftUI
import Starscream

class WebSocketViewModel: ObservableObject {
    @Published var message: String = ""
    var socket: WebSocket!

    init() {
        setupWebSocket()
    }

    func setupWebSocket() {
        socket = WebSocket(url: URL(string: "ws://localhost:5000/ws")!)
        socket.delegate = self
        socket.connect()
    }

    func sendMessage() {
        socket.write(string: "Hello from SwiftUI!")
    }
}

extension WebSocketViewModel: WebSocketDelegate {
    func didReceive(event: WebSocketEvent, client _: WebSocket) {
        switch event {
        case .text(let string):
            message = string
        default:
            break
        }
    }
}

struct WebSocketView: View {
    @ObservedObject private var viewModel = WebSocketViewModel()

    var body: some View {
        VStack {
            Text("WebSocket")
                .font(.title)

            Text("Message: \(viewModel.message)")

            Button(action: {
                viewModel.sendMessage()
            }) {
                Text("Send Message")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("CancerCare Connect")
    }
}
