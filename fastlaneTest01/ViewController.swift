//
//  ViewController.swift
//  fastlaneTest01
//
//  Created by 高倉 尚裕 on 2019/12/03.
//  Copyright © 2019 高倉 尚裕. All rights reserved.
//

import RxSwift
import APIKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if ADHOC
            print("------------ADHOC--------------")
        #else
            print("OTHER")
        #endif
        
        // Do any additional setup after loading the view.
    }


}

