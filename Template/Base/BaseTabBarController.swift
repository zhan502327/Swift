//
//  BaseTabBarController.swift
//  Swift
//
//  Created by zhandb on 2023/7/17.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red

        initChildVC(childVC: HomeViewController(), title: "首页", img: "tabbar_study_icon_nor", selectImg: "tabbar_study_icon_pre")
        initChildVC(childVC: MineViewController(), title: "我的", img: "tabbar_me_icon_nor", selectImg: "tabbar_me_icon_pre")

    }
//    创建子视图
    fileprivate func initChildVC(childVC: BaseViewController, title: String, img: String, selectImg: String) {
        
        childVC.tabBarItem.title = title
        
        childVC.tabBarItem.image = UIImage(named: img)
        childVC.tabBarItem.selectedImage = UIImage(named: selectImg);
        
        let nav = BaseNavController.init(rootViewController: childVC);
        self.addChild(nav)
        
        
        
    }

    
    
    

}
