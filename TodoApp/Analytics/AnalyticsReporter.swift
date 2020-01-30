import Foundation

class AnalyticsReporter {
    var providers: [AnalyticsProvider]

    init(providers: [AnalyticsProvider]) {
        self.providers = providers
    }

    func report(event: AnalyticsEvent, params: AnalyticsParameters) {
        providers.forEach {
            $0.report(event: event, parameters: params)
        }
    }
}
