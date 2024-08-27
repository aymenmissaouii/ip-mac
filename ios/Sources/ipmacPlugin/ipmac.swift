import Foundation

@objc public class ipmac: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
