//
//  DemoData.swift
//  ch21 State&Obervable&Environment(2)
//
//  Created by HEE TAE YANG on 2020/06/01.
//  Copyright © 2020 yht. All rights reserved.
//

import Foundation
import Combine

class DemoData: ObservableObject {
    
    @Published var userNumber = 13
    @Published var userName = " golgo"
    
    init() { // 없어도 잘만 작동하는데 왜 쓰라는건지
        user()
    }
    
    func user() {
        
    }
}
