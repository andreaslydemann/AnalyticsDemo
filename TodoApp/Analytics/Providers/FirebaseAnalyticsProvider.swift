import Foundation
import Firebase

struct FirebaseAnalyticsProvider: AnalyticsProvider {
    private let eventMapper: AnalyticsEventMapper

    init(eventMapper: AnalyticsEventMapper = SnakeCaseAnalyticsEventMapper()) {
        self.eventMapper = eventMapper
        setup()
    }
    
    func setup() {
        FirebaseApp.configure()
    }

    func report(event: AnalyticsEvent, parameters: AnalyticsParameters) {
        let name = eventMapper.event(for: event)
        let params = eventMapper.parameters(for: parameters)
        Analytics.logEvent(name, parameters: params)
    }
}
