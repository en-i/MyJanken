//
//  ContentView.swift
//  My Janken
//
//  Created by terada enishi on 2021/07/08.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        
        VStack {
            Spacer()
            if answerNumber == 0{
                Text("これからじゃんけんをします!")
                    .padding(.bottom)
                
            }else if answerNumber == 1{
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)
            }else if answerNumber == 2{
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            }else {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            
            Button(action: {
                
                var newAnswerNumber = 0
                
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                }while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする!")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
