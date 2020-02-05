import Foundation

protocol AnalyticsEventMapper {
    func name(for event: String) -> String
    func parameters(for parameters: [String: String]) -> [String: String]
}
