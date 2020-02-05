import Foundation

public final class AnalyticsService {
    private static var providers = [AnalyticsProvider]()
    
    static let shared = AnalyticsService(providers: providers)
    
    private init(providers: [AnalyticsProvider]) {
        AnalyticsService.providers = providers
    }
    
    static func register(provider: AnalyticsProvider) {
        providers.append(provider)
    }

    func report(event: AnalyticsEvent) {
        AnalyticsService.providers.forEach {
            $0.reportEvent(name: event.name, parameters: event.parameters)
        }
    }
}
