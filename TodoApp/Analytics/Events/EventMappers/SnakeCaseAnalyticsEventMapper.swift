import Foundation

struct SnakeCaseAnalyticsEventMapper: AnalyticsEventMapper {
    func eventName(for eventName: String) -> String {
        return String(describing: eventName).camelCaseToSnakeCase()
    }
    
    func parameters(for parameters: AnalyticsParameters) -> AnalyticsParameters {
        return Dictionary(uniqueKeysWithValues: parameters.map { ($0.key.camelCaseToSnakeCase(), $0.value) })
    }
}

fileprivate extension String {
    func camelCaseToSnakeCase() -> String {
        let acronymPattern = "([A-Z]+)([A-Z][a-z]|[0-9])"
        let normalPattern = "([a-z0-9])([A-Z])"
        return self.processCamalCaseRegex(pattern: acronymPattern)?
            .processCamalCaseRegex(pattern: normalPattern)?.lowercased() ?? self.lowercased()
    }
    
    private func processCamalCaseRegex(pattern: String) -> String? {
        let regex = try? NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(location: 0, length: count)
        return regex?.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "$1_$2")
    }
}
