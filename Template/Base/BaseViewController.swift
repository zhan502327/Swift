//
//  BaseViewController.swift
//  Swift
//
//  Created by zhandb on 2023/7/17.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI();
    }
    
    func initUI() {
        self.view.backgroundColor = UIColor.white
    }

}
