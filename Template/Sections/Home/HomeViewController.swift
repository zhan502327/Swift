//
//  HomeViewController.swift
//  Template
//
//  Created by zhandb on 2023/7/17.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "首页"
        
        loadData()
        
        
    }
    
    // 加载数据
    func loadData() {
        
        
        //设置header
        let version: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1"
        let headers: HTTPHeaders = [
            "ZLINK-DEVICE": "app_ios",
            "OS-VERSION": UIDevice.current.systemVersion,
            "ZLINK-VERSION": version
        ]
        
        //        AF.request(kBaseUrl + "api/student/lead", method: .post, headers: headers ).responseJSON { (response) -> Void in
        //            let swiftyJsonVar = JSON(response.value ?? <#default value#>!)
        //            print(swiftyJsonVar)
        //        }
        
        
        AF.request(kBaseUrl + "api/student/lead", method: .post, headers: headers ).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("请求成功", value)
            case .failure(let error):
                print("请求失败", error)
                
                
            }
            
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //        let vc = NextViewController()
        //        self.navigationController?.pushViewController(vc, animated: true)
        loadData()
    }
}
