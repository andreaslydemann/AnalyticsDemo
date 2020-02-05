import Foundation

struct DebugAnalyticsProvider: AnalyticsProvider {
    func reportEvent(name: String, parameters: [String: String]) {
        print("Event reported - name: \(name), parameters: \(parameters)")
    }
}
