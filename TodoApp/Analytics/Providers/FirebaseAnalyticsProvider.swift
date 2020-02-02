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

    func report(event: AnalyticsEvent) {
        let snakeCaseEventName = eventMapper.eventName(for: event.name)
        let snakeCaseParameters = eventMapper.parameters(for: event.parameters)
        Analytics.logEvent(snakeCaseEventName, parameters: snakeCaseParameters)
    }
}
