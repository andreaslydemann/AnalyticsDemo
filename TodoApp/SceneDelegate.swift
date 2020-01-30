import UIKit
import Firebase

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        defer { self.window = window }

        window.windowScene = windowScene

        FirebaseApp.configure()
        let analyticsReporter = AnalyticsReporter(providers: [FirebaseAnalyticsProvider()])
        let categoryVC = CategoryViewController(analyticsReporter: analyticsReporter)
        
        window.rootViewController = UINavigationController(rootViewController: categoryVC)
        window.makeKeyAndVisible()
    }
}
