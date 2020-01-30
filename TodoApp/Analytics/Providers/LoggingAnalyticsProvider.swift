import Foundation

struct LoggingAnalyticsProvider: AnalyticsProvider {
    func report(event: AnalyticsEvent, parameters: AnalyticsParameters) {
        print("Event reported - name: \(event.rawValue), parameters: \(parameters)")
    }
}
