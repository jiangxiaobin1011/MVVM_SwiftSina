//
//  Bundle+Extension.swift
//  SinoDemo
//
//  Created by jiangbin on 2019/12/25.
//  Copyright © 2019 ice. All rights reserved.
//

import Foundation

extension Bundle {
    
    var namespace : String {
        //命名空间
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    
}
