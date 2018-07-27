//
//  Comparable+Mimik.swift
//  Mimik
//
//  Created by Mike MacDougall on 7/26/18.
//

import Foundation

public extension Comparable {
    /// Passes receiver into `action` closure and will return
    /// itself if condition is met
    ///
    /// - Parameter action: Closure with receiver as argument
    /// - Returns: Receiver if condition is met
    func takeIf<T: Comparable>(_ action: ((T) -> Bool)) -> T? {
        guard let safeSelf = self as? T else { return nil }
        if (action(safeSelf)) {
            return self as? T
        }
        return nil
    }
    
    /// Passes receiver into `action` closure and will return
    /// itself if condition is not met
    ///
    /// - Parameter action: Closure with receiver as argument
    /// - Returns: Receiver if condition is not met
    func takeUnless<T: Comparable>(_ action: ((T) -> Bool)) -> T? {
        return takeIf {
            !action($0)
        }
    }
}
