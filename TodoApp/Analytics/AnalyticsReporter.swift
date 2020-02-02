import Foundation

class AnalyticsReporter {
    private static var providers = [AnalyticsProvider]()
    
    static let shared = AnalyticsReporter(providers: providers)
    
    private init(providers: [AnalyticsProvider]) {
        AnalyticsReporter.providers = providers
    }
    
    static func register(provider: AnalyticsProvider) {
        providers.append(provider)
    }

    func report(event: AnalyticsEvent) {
        AnalyticsReporter.providers.forEach {
            $0.report(event: event)
        }
    }
}
