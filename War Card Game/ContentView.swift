//
//  ContentView.swift
//  War Card Game
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
            
            VStack(spacing: 50) {
                Image(.logo)
                
                HStack(spacing: 50) {
                    Image(.card2)
                    
                    Image(.card3)
                }
                
                Image(.button)
                
                HStack {
                    Spacer()
                    VStack(spacing: 30) {
                        Text("Player")
                            .font(.title3).bold()
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                   
                    Spacer()
                    VStack(spacing: 30) {
                        Text("CPU")
                            .font(.title3).bold()
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
