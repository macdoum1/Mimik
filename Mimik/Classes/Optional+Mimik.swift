//
//  Optional+Mimik.swift
//  Mimik
//
//  Created by Mike MacDougall on 7/27/18.
//

import UIKit

public extension Optional {
    func let_mimik<T>(_ action: ((Wrapped) -> T)) -> T? {
        return map(action)
    }
}
