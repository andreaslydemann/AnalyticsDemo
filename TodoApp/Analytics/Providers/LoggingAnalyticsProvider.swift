import Foundation

struct LoggingAnalyticsProvider: AnalyticsProvider {
    func report(event: AnalyticsEvent) {
        print("Event reported - name: \(event.name), parameters: \(event.parameters)")
    }
}
