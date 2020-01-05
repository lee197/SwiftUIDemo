//
//  HaHaView.swift
//  SwiftUIDemo
//
//  Created by 李祺 on 25/09/2019.
//  Copyright © 2019 boonray.iOS.iot. All rights reserved.
//

import SwiftUI

struct HaHaView: View {
    
    let newString:String?
    
    init(newString:String) {
        self.newString = newString
    }
    
    
    
    var body: some View {
        Text(newString!)
    }
}

struct HaHaView_Previews: PreviewProvider {
    static var previews: some View {
        HaHaView(newString: "here")
    }
}
