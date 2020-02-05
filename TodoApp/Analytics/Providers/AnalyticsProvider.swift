import Foundation

public protocol AnalyticsProvider {
    func reportEvent(name: String, parameters: [String: String])
}
