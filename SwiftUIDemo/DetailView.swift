//
//  HaHaView.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 25/09/2019.
//  Copyright © 2019 boonray.iOS.iot. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let newString:String?
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(newString!)
            }.navigationBarTitle(Text(newString!))
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(newString: "here")
    }
}
