import Foundation

protocol AnalyticsEventMapper {
    func event(for event: AnalyticsEvent) -> String
    func parameters(for parameters: AnalyticsParameters) -> [String: String]
}
