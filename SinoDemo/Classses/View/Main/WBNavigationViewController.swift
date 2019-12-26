//
//  WBNavigationViewController.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/25.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit

class WBNavigationViewController: UINavigationController , UINavigationBarDelegate{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if(viewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true
            //判断控制器的类型
            if let vc = viewController  as? WBBaseViewController{
                
                var title = "返回"
                
                if(viewControllers.count == 1){
                    
                    title = viewControllers[0].title ?? ""
                }
                vc.navItem.leftBarButtonItem = UIBarButtonItem(title:  title, target: self, action: #selector(back) ,isBackBtn: true)
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    
    @objc private func back() {
        popViewController(animated: true)
    }
}


extension WBNavigationViewController{
    


    
}



