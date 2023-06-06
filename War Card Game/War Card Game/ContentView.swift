//
//  ContentView.swift
//  War Card Game
//
//  Created by Роман Исламов on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
          Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10.0)
                        //Convert int To String
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        //Convert int To String
                        Text(String(cpuScore))
                    }
                    Spacer()
                }
                .font(.title)
                .foregroundColor(.white)
                Spacer()
                
            }
            
            
        }
        
    }
    
    func deal() {
        //Randomize the Players Card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the CPU Card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
        
        if playerCardValue > cpuCardValue {
            //add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            //add 1 to Cpu score
            cpuScore += 1
        } else {
            //Tie
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
