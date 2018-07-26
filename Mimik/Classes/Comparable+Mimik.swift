//
//  Comparable+Mimik.swift
//  Mimik
//
//  Created by Mike MacDougall on 7/26/18.
//

import Foundation

public extension Comparable {
    func takeIf<T: Comparable>(_ action: ((T) -> Bool)) -> T? {
        guard let safeSelf = self as? T else { return nil }
        if (action(safeSelf)) {
            return self as? T
        }
        return nil
    }
}
