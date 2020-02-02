extension AnalyticsEvent {
    static func categoryAdded(categoryTitle: String) -> AnalyticsEvent {
        return AnalyticsEvent(name: "categorySelected", parameters: ["categoryTitle": categoryTitle])
    }
}
