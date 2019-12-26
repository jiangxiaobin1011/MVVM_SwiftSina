//
//  WBMainViewController.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/25.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit

class WBMainViewController: UITabBarController  , UITabBarControllerDelegate{

    
    private lazy  var composeBtn : UIButton = UIView.create_Button_(withBackGroundColor: UIColor.orange, textColor: nil, text: nil, image: nil, font: nil, bordeColor: nil, borderWidth: 0, cornerRadius: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupChildControllers()
        setComposeBtn()
    }
    
}

extension WBMainViewController{
    

    @objc private func composeClick() {
        print("发表微博")
    }
    
    private func setComposeBtn() {
        
        let count =  Float(viewControllers?.count ?? 0)
        
        let wid = Float(tabBar.bounds.size.width) / count
        
        //frame缩进
        composeBtn.frame = tabBar.bounds.insetBy(dx: CGFloat(2*wid+15), dy: 5)
        
        composeBtn.setImage(UIImage(named: "composeBtnIcon"), for: .normal)
        
        tabBar.addSubview(composeBtn)
        
        
        composeBtn.addTarget(self, action: #selector(composeClick), for: .touchUpInside)
        
        delegate = self
        
    }
    
    private func setupChildControllers () {
        
        let arr = [
            ["clsName" : "WBHomeViewController" ,"title" : "首页" , "imageName" : "zzz"],
            ["clsName" : "WBHomeViewController" ,"title" : "消息" , "imageName" : "zzz"],
             ["clsName" : "UIViewController" ,"title" : "" , "imageName" : ""],
            ["clsName" : "WBHomeViewController" ,"title" : "搜索" , "imageName" : "zzz"],
            ["clsName" : "WBHomeViewController" ,"title" : "我" , "imageName" : "zzz"]
        ]
        
        var arrM = [UIViewController]()
        
        for dict in arr{
            
            let vc = childController(dict: dict)
            
            arrM.append(vc)
            
        }
        
        viewControllers = arrM
        
        
        tabBar.tintColor = UIColor.orange
        
    }
    
    private func childController (dict : [String : String]) -> UIViewController {
        
        guard   let clsName = dict["clsName"] ,
                let title = dict["title"],
                let imageName = dict["imageName"],
                let cls  =  NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else {
            return UIViewController()
        }
        
        let vc = cls.init()
        
        vc.title = title
        
        vc.tabBarItem.title = title
        
        vc.tabBarItem.image = UIImage(named: imageName)
        
        vc.tabBarItem.selectedImage = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        
//        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.darkGray], for: .normal)
//        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange], for: .selected)

        let nav = WBNavigationViewController(rootViewController: vc)
        
        return nav
        
    }
    
   
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if(viewController == viewControllers?[2]){
            return false
        }
        return true
        
    }
    
}
