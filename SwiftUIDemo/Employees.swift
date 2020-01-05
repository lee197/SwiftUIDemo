//
//  Employees.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 25/09/2019.
//  Copyright © 2019 boonray.iOS.iot. All rights reserved.
//

import Foundation
import SwiftUI



struct Employees:Identifiable {
    var id = UUID()
    var eName:String
    var eNumber:Int
    var eState:Bool
    var eImage:String{return eName}
}

#if DEBUG
let employeesList = [Employees(eName:"仇俊",eNumber:123,eState:true),
                     Employees(eName:"启超",eNumber:124,eState:true),
                     Employees(eName:"李祺",eNumber:125,eState:false),
                     Employees(eName:"杨博",eNumber:126,eState:true),
                     Employees(eName:"Jakic",eNumber:127,eState:true),
                     Employees(eName:"谢光",eNumber:128,eState:true)]

#endif
