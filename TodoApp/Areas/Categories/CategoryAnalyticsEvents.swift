extension AnalyticsEvent {
    static func categoryAdded(categoryTitle: String) -> AnalyticsEvent {
        return AnalyticsEvent(name: "categoryAdded", parameters: ["categoryTitle": categoryTitle])
    }
}
