//
//  Safe.swift
//  Singleton
//
//  Created by Michail Bondarenko on 2/18/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation

class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {}
}
