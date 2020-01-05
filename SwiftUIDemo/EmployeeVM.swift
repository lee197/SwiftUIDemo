//
//  EmployeeVM.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 05/01/2020.
//  Copyright © 2020 boonray.iOS.iot. All rights reserved.
//

import Foundation

enum EmployeeError: Error {
    case NoThisGuy
    case ThisGuyResigned
    case ThisGuyNotInThisDepartment
}

class EmployeeVm: ObservableObject {
    @Published private var employees:[Employees]?
    
    public func checkEmployeeInfo(employeeID:Int)->(Bool,String){
      
            do{
                if try checkEmployee(empID: employeeID){
                   return (true,"passed")

                }else{
                    return (false,"will see")
                }

            }catch EmployeeError.NoThisGuy{
                return (false,"can not find this guy")

            }catch EmployeeError.ThisGuyNotInThisDepartment{
                return (false,"this guy not in the department")

            }catch EmployeeError.ThisGuyResigned{
                return (false,"this guy has resigned")

            }catch{
                return (false,"unkonown error")
            }
        
    }
    public func getEmployeeInfo()->[Employees]{
        return [
                 Employees(eName:"仇俊",eNumber:123,eState:true),
                 Employees(eName:"启超",eNumber:124,eState:true),
                 Employees(eName:"李祺",eNumber:125,eState:false),
                 Employees(eName:"杨博",eNumber:126,eState:true),
                 Employees(eName:"Jakic",eNumber:127,eState:true),
                 Employees(eName:"谢光",eNumber:128,eState:true)
        ]
    }
    
    private func generateEmployees(groupID:Int?) ->[Employees]{
        
        let employeesList = [
                 Employees(eName:"仇俊",eNumber:123,eState:true),
                 Employees(eName:"启超",eNumber:124,eState:true),
                 Employees(eName:"李祺",eNumber:125,eState:false),
                 Employees(eName:"杨博",eNumber:126,eState:true),
                 Employees(eName:"Jakic",eNumber:127,eState:true),
                 Employees(eName:"谢光",eNumber:128,eState:true)
        ]
        
        return employeesList
        
    }
    
    private func checkEmployee(empID:Int)throws ->Bool{
        
           let employeesList = generateEmployees(groupID: 0)
           for item in employeesList{
             if item.eNumber == empID && item.eState{
                return true
             }else if !item.eState{
                throw EmployeeError.ThisGuyResigned
             }
            
            }
        
           throw EmployeeError.NoThisGuy
    }
    

}
