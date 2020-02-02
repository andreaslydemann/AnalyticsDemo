import Foundation

typealias AnalyticsParameters = [String: String]

struct AnalyticsEvent {
    var name: String
    var parameters: AnalyticsParameters
    
    init(name: String, parameters: AnalyticsParameters = [:]) {
        self.name = name
        self.parameters = parameters
    }
}
