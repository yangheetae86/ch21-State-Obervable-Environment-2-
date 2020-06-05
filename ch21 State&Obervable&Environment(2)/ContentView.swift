//
//  ContentView.swift
//  ch21 State&Obervable&Environment(2)
//
//  Created by HEE TAE YANG on 2020/06/01.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var demoData: DemoData
//    @ObservedObject var demoData: DemoData
    @State var wifiEnable = false
    @State var name = ""
    
    var body: some View {
        
        VStack{
            Toggle(isOn: $wifiEnable) {
                Text("Wifi Enable")
            }
            TextField("Kt wifi 5g 수정가능", text: $name)
            Text(name)
            Image(systemName: wifiEnable ? "wifi" : "wifi.slash")
            Text("\(demoData.userName) \(demoData.userNumber)")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DemoData())
    }
}
