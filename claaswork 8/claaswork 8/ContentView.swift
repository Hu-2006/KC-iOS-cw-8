//
//  ContentView.swift
//  claaswork 8
//
//  Created by Mac on 04/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let chooseColor = [Color.yellow , Color.red , Color.cyan , Color.green]
    @State var word = ""
    @State var choosencolor = Color.yellow
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.teal.opacity(0.5).ignoresSafeArea()
                VStack{
                    
                    Text("اختر اللون المفضل لديك")
                        .font(.largeTitle)
                    
                    HStack{
                        ForEach(chooseColor,id: \.self){ color in
                            Circle()
                                .frame(width: 50 , height: 100)
                                .foregroundColor(color.opacity(0.9))
                                .onTapGesture {
                                choosencolor = color
                        }
                        
                    }
                        
                }
                    Text("ماذا تريد ان تكتب ")
                        .font(.largeTitle)
                    
                    TextField("اكتب هنا", text: $word)
                        .frame(width: 360)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    NavigationLink{
                        Secondview(text: word, color: choosencolor)
                    } label: {
                        Text("حفظ")
                            .font(.largeTitle)
                            .frame(width: 100 , height: 50)
                            .background(Color.black)
                        
                    }
                   Spacer()
                }.padding()
            }
            .navigationTitle("دفتر اليوميات")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
