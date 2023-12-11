//
//  ContentView.swift
//  War Card Game
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card7"
    @State var cpuCard: String = "card13"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Image(.logo)
                
                HStack(spacing: 50) {
                    Image(playerCard)
                    
                    Image(cpuCard)
                }
                
                Button {
                    dealCards()
                } label: {
                    Image(.button)
                }
                
                HStack {
                    Spacer()
                    VStack(spacing: 30) {
                        Text("Player")
                            .font(.title3).bold()
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                   
                    Spacer()
                    VStack(spacing: 30) {
                        Text("CPU")
                            .font(.title3).bold()
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                }
            }
        }
    }
    
    func dealCards() {
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
