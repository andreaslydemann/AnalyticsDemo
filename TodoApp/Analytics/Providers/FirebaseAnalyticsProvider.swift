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

    func reportEvent(name: String, parameters: [String: String]) {
        let snakeCaseName = eventMapper.name(for: name)
        let snakeCaseParameters = eventMapper.parameters(for: parameters)
        Analytics.logEvent(snakeCaseName, parameters: snakeCaseParameters)
    }
}
