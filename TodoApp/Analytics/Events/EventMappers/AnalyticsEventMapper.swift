import Foundation

protocol AnalyticsEventMapper {
    func eventName(for event: String) -> String
    func parameters(for parameters: AnalyticsParameters) -> AnalyticsParameters
}
