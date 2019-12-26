//
//  WBHomeViewController.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/25.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupUI()
    }
    
    
    @objc private func showFriend(){
        print("")
        let vc = WBDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }

}


extension WBHomeViewController{
    
    func setupUI() {
        
        navItem.leftBarButtonItem = UIBarButtonItem(title: "好友", fontSize: 15, target: self, action: #selector(showFriend))
        
        
    }
    
}
