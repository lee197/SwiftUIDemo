//
//  EmployeeVM.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 05/01/2020.
//  Copyright © 2020 boonray.iOS.iot. All rights reserved.
//

import Foundation

class EmployeeVm: ObservableObject {
    @Published private var employees:[Employees]?
    
    public func getEmployeeInfo()->[Employees]{
        if let employee = self.employees{
            
            return employee
            
        }else{
            
            return generateEmployees()
        }
    }
    
    private func generateEmployees()->[Employees]{
        
        let employeesList = [Employees(eName:"仇俊",eNumber:123,eState:true),
                 Employees(eName:"启超",eNumber:124,eState:true),
                 Employees(eName:"李祺",eNumber:125,eState:false),
                 Employees(eName:"杨博",eNumber:126,eState:true),
                 Employees(eName:"Jakic",eNumber:127,eState:true),
                 Employees(eName:"谢光",eNumber:128,eState:true)]
        
        return employeesList
        
    }
    

}
