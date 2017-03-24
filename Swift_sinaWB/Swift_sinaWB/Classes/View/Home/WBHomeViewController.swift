//
//  WBHomeViewController.swift
//  swiftSina
//
//  Created by Liao PanPan on 2017/3/24.
//  Copyright © 2017年 Liao PanPan. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @objc func showFriends() {
        
        let vc = WBDemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}


extension WBHomeViewController{
    
    override func setupUI() {
    
            super.setupUI()
        
        //设置导航栏按钮
        navItem.leftBarButtonItem = UIBarButtonItem(title:"好友",target: self, action:#selector(showFriends))
        
        
       
    }
    
    
    
}
