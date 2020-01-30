import Foundation

typealias AnalyticsParameters = [AnalyticsEvent.Parameter: String]

enum AnalyticsEvent: String {
    case categorySelected
    case categoryAdded
    case categoryShown
    case itemSelected
    case itemAdded
}

extension AnalyticsEvent {
    enum Parameter: String {
        case categoryIndex
        case itemIndex
        case categoryName
        case itemName
    }
}
