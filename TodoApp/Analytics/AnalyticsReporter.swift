import Foundation

class AnalyticsReporter {
    private var providers: [AnalyticsProvider] = []
    
    private init() {}
    
    static let shared : AnalyticsReporter = {
        var reporter = AnalyticsReporter()
        reporter.providers.append(FirebaseAnalyticsProvider())
        return reporter
    }()

    func report(event: AnalyticsEvent, params: AnalyticsParameters) {
        providers.forEach {
            $0.report(event: event, parameters: params)
        }
    }
}
