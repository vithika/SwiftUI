//
//  ContentView.swift
//  uitest
//
//  Created by Vithika Gupta on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State  private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private  var playerScore = 0
    @State  private var cpuScore = 0
    @State private var winning = " is winning"
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
        VStack
        {
            
           
            Spacer()
        Image("logo")
        Spacer()
        HStack
            {
                Spacer()
                Image(playerCard)
                Spacer()
                 Image(cpuCard)
                Spacer()

                
                
                Spacer()
    }
            Spacer()
            
            Button(action: {
                
                //Generate the random number between 2 to 14
                
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                //update the cards
                
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                //update the score
                
                if playerRand > cpuRand  {
                playerScore += 1
                }
                else if(cpuRand > playerRand)
                {
                    cpuScore += 1
                }
                
                
            }, label:
                    {
                Image("dealbutton")
                   })
                Spacer()
            if playerScore > cpuScore
            {
            Text("Player" + winning)
                .font(.title)
                .foregroundColor(Color.white)
            }
           else if playerScore < cpuScore
            {
            Text("Bot" + winning)
                .font(.title)
                .foregroundColor(Color.white)
            }
            else if (playerScore == 0 && cpuScore == 0)
             {
             Text("Game yet to start")
                 .font(.title)
                 .foregroundColor(Color.white)
             }
            else if (playerScore == cpuScore)
             {
             Text("Its a Tie")
                 .font(.title)
                 .foregroundColor(Color.white)
             }
            Spacer()
                HStack(){
                Spacer()
                VStack
                {
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 5.0)
                    Text(String(playerScore))
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.bottom,30.0)
                }
                Spacer()
                VStack
                {
                    Text("Bot")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 5.0)
            
                    Text(String(cpuScore))
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.bottom,30.0)
                    
                    
                }
                
                Spacer()
            }
            
       
        }
           
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
                .previewLayout(.device)
                .previewDevice("iPhone 11")
            
           
        }
    }
}
