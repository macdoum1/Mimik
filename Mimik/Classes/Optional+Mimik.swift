//
//  Optional+Mimik.swift
//  Mimik
//
//  Created by Mike MacDougall on 7/27/18.
//

import UIKit

public extension Optional {
    /// Passes wrapped value into `action` closure and will return
    /// itself if value is non-nil
    ///
    /// - Parameter action: Closure with wrapped value as argument
    /// - Returns: Wrapped value if non-nil
    func let_mimik<T>(_ action: ((Wrapped) -> T)) -> T? {
        return map(action)
    }
}
