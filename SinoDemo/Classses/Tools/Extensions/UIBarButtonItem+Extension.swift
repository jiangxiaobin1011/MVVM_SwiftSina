//
//  UIBarButtonItem+Extension.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/26.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit


extension UIBarButtonItem{
    
    convenience  init(title : String ,fontSize : CGFloat = 16 ,normalColor : UIColor = UIColor.darkGray, highlightedColor : UIColor = UIColor.orange , target : AnyObject? ,action : Selector , isBackBtn : Bool = false) {
        
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        btn.setTitleColor(normalColor, for: .normal)
        btn.setTitleColor(highlightedColor, for: .highlighted)
        if(isBackBtn){
            btn.setImage(UIImage(named: "leftBackIcon"), for: .normal)
            btn.setImage(UIImage(named: "leftBackIcon"), for: .normal)
        }
        
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        btn.sizeToFit()
        self.init(customView:btn)
    }

}

