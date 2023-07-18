//
//  BaseNavController.swift
//  Swift
//
//  Created by zhandb on 2023/7/17.
//

import UIKit

class BaseNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//  重写
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if (self.children.count > 0) {
            viewController.hidesBottomBarWhenPushed = true;

        }
        
        super.pushViewController(viewController, animated: animated);
    }

}
