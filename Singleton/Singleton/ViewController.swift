//
//  ViewController.swift
//  Singleton
//
//  Created by Michail Bondarenko on 2/18/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let safe = Safe.shared
        print(safe.money)
        
    }
}

