import Foundation

struct AnalyticsEvent {
    var name: String
    var parameters: [String: String]
    
    init(name: String, parameters: [String: String] = [:]) {
        self.name = name
        self.parameters = parameters
    }
}
