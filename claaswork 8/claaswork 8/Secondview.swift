//
//  Secondview.swift
//  claaswork 8
//
//  Created by Mac on 04/11/2022.
//

import SwiftUI

struct Secondview: View {
   let text : String
    let color : Color
    var body: some View {
        ZStack{
            color.ignoresSafeArea().opacity(0.9)
            
        Text(text)
                .font(.largeTitle)
            
        }
    }
}

struct Secondview_Previews: PreviewProvider {
    static var previews: some View {
        Secondview(text: "Hello", color: .red)
    }
}
