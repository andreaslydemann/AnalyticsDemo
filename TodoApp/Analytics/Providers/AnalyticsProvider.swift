import Foundation

protocol AnalyticsProvider {
    func reportEvent(name: String, parameters: [String: String])
}
