import Foundation

final class OAuth2TokenStorage {
    private let userDefaults: UserDefaults
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }
    
    var token: String? {
        get {
            userDefaults.string(forKey: "authToken")
        }
        set {
            userDefaults.set(newValue, forKey: "authToken")
        }
    }
}
