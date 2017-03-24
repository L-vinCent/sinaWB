//
//  WBBaseViewController.swift
//  swiftSina
//
//  Created by Liao PanPan on 2017/3/24.
//  Copyright © 2017年 Liao PanPan. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {

    
    /// 自定义的导航条目 - 以后设置导航栏内容，统一使用 navItem
    lazy var navItem = UINavigationItem()
    
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.cz_screenWidth(), height: 64))


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
            setupUI()
    
    }
    
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }
    

}

// MARK: - 设置界面
extension WBBaseViewController{

    
    
     func setupUI() {
        
        view.backgroundColor=UIColor.cz_random()
        setupNavigationBar()

    }
    
    private func setupNavigationBar() {
        // 添加导航条
        view.addSubview(navigationBar)
        
        // 将 item 设置给 bar
        navigationBar.items = [navItem]
        
        // 1> 设置 navBar 整个背景的渲染颜色
        navigationBar.barTintColor = UIColor.cz_color(withHex: 0xF6F6F6)
        // 2> 设置 navBar 的字体颜色
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.darkGray]
        // 3> 设置系统按钮的文字渲染颜色
        navigationBar.tintColor = UIColor.orange
    }
    
    
}
