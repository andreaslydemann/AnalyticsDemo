import Foundation

protocol AnalyticsProvider {
    func report(event: AnalyticsEvent)
}
