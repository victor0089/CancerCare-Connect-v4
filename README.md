# CancerCare-Connect-v4

ContentView sets up the main app structure and the initial view (AuthView).
AuthView is a simple view with a login button that navigates to HealthDataView.
HealthDataView is another view with a button that navigates to WebSocketView.
WebSocketView connects to a WebSocket server at ws://localhost:5000/ws and allows sending messages.
