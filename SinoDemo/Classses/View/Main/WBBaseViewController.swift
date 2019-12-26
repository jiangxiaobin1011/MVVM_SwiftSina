//
//  WBBaseViewController.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/25.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController  , UINavigationBarDelegate{

    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: 64))
     
    lazy  var navItem : UINavigationItem = UINavigationItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override var title: String?{
           didSet{
               navItem.title = title
           }
    }
    
}


extension WBBaseViewController{
    
    private func setupUI(){
        view.backgroundColor = UIColor.white
        
        navigationBar.delegate = self
        
        view.addSubview(navigationBar)
        
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.darkGray]
        navigationBar.items = [navItem]
        
    }
    //navigationBar通顶的方法
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        
        return .topAttached
        
    }
    
}
