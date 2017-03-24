//
//  WBMainViewController.swift
//  swiftSina
//
//  Created by Liao PanPan on 2017/3/24.
//  Copyright © 2017年 Liao PanPan. All rights reserved.
//

import UIKit

class WBMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupChildControllers()
        setupComposeButton()
        
    }
    lazy var composeButton: UIButton=UIButton.cz_imageButton("tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")

   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension  WBMainViewController{
    
     func setupComposeButton(){
        
        tabBar.addSubview(composeButton)
        let count = CGFloat(childViewControllers.count)
        // 将向内缩进的宽度
        let w = tabBar.bounds.width / count
        
        // CGRectInset 正数向内缩进，负数向外扩展
        composeButton.frame = tabBar.bounds.insetBy(dx: 2 * w, dy: 0)
        print("撰写按钮宽度 \(composeButton.bounds.width)")
        
        // 按钮监听方法
        composeButton.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
    }
    
    
     @objc func composeStatus() {
        
        print("微博")
    }
    
     func setupChildControllers(){
    
        let array=[
            
        ["clsName":"WBHomeViewController","title":"首页","imageName":"home"],
          ["clsName":"WBMessageViewController","title":"消息","imageName":"message_center"],
          ["clsName":"","title":"","imageName":""],
          ["clsName":"WBDiscoverViewController","title":"发现","imageName":"discover"],
           ["clsName":"WBProfileViewController","title":"我","imageName":"profile"],
        ]
        var arrayM=[UIViewController]()
        
        for dict in array {
            
            arrayM.append(controller(dict: dict))
            
        }
        
        viewControllers=arrayM
        
    }
    
    
    private func controller(dict: [String: String]) -> UIViewController {
        
        // 1. 取得字典内容
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"],
            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? WBBaseViewController.Type
            else {
                
                return UIViewController()
        }
        
        // 2. 创建视图控制器
        let vc = cls.init()
        
        vc.title = title
        vc.tabBarItem.image=UIImage(named:"tabbar_" + imageName)
        //tabbar_home_selected
        vc.tabBarItem.selectedImage=UIImage(named:"tabbar_" + imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        let nav=WBNavViewController(rootViewController:vc)
        
        
        return nav
        // 设置控制器的访客信息字典
     
    
}
    
}
