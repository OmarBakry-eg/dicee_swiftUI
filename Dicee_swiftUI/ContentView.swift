//
//  ContentView.swift
//  Dicee_swiftUI
//
//  Created by Omar Bakry on 20/11/2021.
//

import SwiftUI

struct ContentView: View {
//    var rightNum : Int = 1
//    var leftNum : Int = 2
    @State var rightNum : Int = 1
    @State var leftNum : Int = 2
    var body: some View {
        ZStack{
            Image("background").resizable()
            VStack{
                Spacer().frame(height: 20)
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(number: rightNum)
                    DiceeView(number: leftNum)
                }.padding(.horizontal)
                Spacer()
                Button(action:{
//  rightNum = Int.random(in: 1...6)
// leftNum = Int.random(in: 1...6)
// this will throw an err that told because struct is immutable so we can't change it because we need to destory it and rebuild a new one but swift ui gor us a new property wrapper called @State and this will allow us to update this variable and get swift to recreate this content view
                    self.leftNum = Int.random(in: 1...6)
                    self.rightNum = Int.random(in: 1...6)
                    // we add self because we're inside a closure.
                }) {
                    Text("Roll").font(.system(size: 50)).fontWeight(.heavy).foregroundColor(.white).padding(.horizontal)
                }.background(Color.red)
                Spacer().frame(height: 20)
            }
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


