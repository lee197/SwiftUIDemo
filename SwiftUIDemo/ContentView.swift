//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 23/09/2019.
//  Copyright © 2019 boonray.iOS.iot. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var isTure:Bool = false
    var testString = "Hello "
    var staffInfo:[Employees] = []
    
    var body: some View {
        
        NavigationView {
            
            List(staffInfo) { staff in
            
                NavigationLink(destination:HaHaView(newString: self.testString+staff.eName)){
                    
                    Image("testImage").cornerRadius(5)
                                
                                HStack(spacing:120) {
                                    VStack(alignment: .leading, spacing: 10) {
                                        
                                     Text(staff.eName)
                                 Text(String(staff.eNumber)).font(.subheadline).foregroundColor(.secondary)
                                    }
                                  
                                    if staff.eState {
                                        Text("在职")
                                    } else {
                                        Text("离职")

                                    }
                                   
                                }
                   
                    
                }
            Button(action: {}) {
                                   Text("点击了解更多").font(.caption)
                               }
                
                }.navigationBarTitle(Text("伯镭职工列表"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(staffInfo:employeesList)
    }
}
