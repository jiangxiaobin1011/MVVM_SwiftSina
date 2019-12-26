//
//  WBDemoViewController.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/26.
//  Copyright © 2019 ice. All rights reserved.
//

import UIKit


/**
 
 查看代码写的行数
 find . -name "*.swift" | xargs wc -l
 
 
  34 ./SinoDemoTests/SinoDemoTests.swift
  43 ./SinoDemoUITests/SinoDemoUITests.swift
  22 ./SinoDemo/ViewController.swift
  19 ./SinoDemo/Classses/Tools/Extensions/Bundle+Extension.swift
  33 ./SinoDemo/Classses/Tools/Extensions/UIBarButtonItem+Extension.swift
  41 ./SinoDemo/Classses/View/Home/WBHomeViewController.swift
  41 ./SinoDemo/Classses/View/WBDemoViewController.swift
  30 ./SinoDemo/Classses/View/Discover/WBDiscoverViewController.swift
 118 ./SinoDemo/Classses/View/Main/WBMainViewController.swift
  56 ./SinoDemo/Classses/View/Main/WBNavigationViewController.swift
  52 ./SinoDemo/Classses/View/Main/WBBaseViewController.swift
  37 ./SinoDemo/AppDelegate.swift
  53 ./SinoDemo/SceneDelegate.swift
 579 total
 
 
 */

class WBDemoViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    
    
    @objc private func nextStep(){
        
        let vc = WBDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
        
        print("")
    }
    

}


extension WBDemoViewController{
    
     func setupUI() {
        navItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", target: self, action: #selector(nextStep))
        title = "测试"
        
    }
    
}
