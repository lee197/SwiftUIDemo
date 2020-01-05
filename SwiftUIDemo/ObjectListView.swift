//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 23/09/2019.
//  Copyright © 2019 boonray.iOS.iot. All rights reserved.
//

import SwiftUI

struct ObjectListView: View {
    var isTure:Bool = false
    var testString = "Hello "
    @ObservedObject var emplyeeVM = EmployeeVm()
    @State var checkResult:Int? = 0
    
    var body: some View {
        
        NavigationView {
            
            List(emplyeeVM.getEmployeeInfo()) { staff in
            
                NavigationLink(destination:DetailView(newString: self.testString+staff.eName),tag:1,selection:self.$checkResult){
                    
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
               Button(action: {
                let info = self.emplyeeVM.checkEmployeeInfo(employeeID: staff.eNumber)
                if info.0{
                    self.checkResult=1
                }else{
                    let _ = Alert(title: Text("Error"), message: Text(info.1), dismissButton: .default(Text("OK")))

                }


               }) {
               Text("点击了解更多").font(.caption)
                }
                }.navigationBarTitle(Text("伯镭职工列表"))
        }
    }
}

struct ObjectListView_Previews: PreviewProvider {

    static var previews: some View {
        ObjectListView(emplyeeVM: EmployeeVm())
    }
}
