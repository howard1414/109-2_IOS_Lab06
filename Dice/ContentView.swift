//
//  ContentView.swift
//  Dice
//
//  Created by Howard on 2021/4/28.
//

import SwiftUI




struct ContentView: View {
    
    @State private var d1 = 1
    @State private var d2 = 1
    @State private var d3 = 1
    
    
    @State private var input = ""
    @State private var totalNumber = 1000
    
    @State private var start = false
    @State private var result = "Prediciting"
    
    
    var body: some View {
        
        VStack {
            
            Text("Dice Game").font(.largeTitle).foregroundColor(.pink)
            
            Spacer().frame(height: 100)
            //dice1
            HStack {
                
                Image(systemName: "die.face.\(d1)")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Dice 1 number:\(d1)").font(.title)
                
                

            }
            
            //dice2
            HStack {
                
                Image(systemName: "die.face.\(d2)")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Dice 2 number:\(d2)").font(.title)
                
                

            }
            
            //dice3
            HStack {
                
                Image(systemName: "die.face.\(d3)")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Dice 3 number:\(d3)").font(.title)
                
                

            }
            
            HStack {
                TextField("Please Enter predction of the dice sum", text: $input)
                    .frame(width: 200, height: 50)
                Button(
                    action : {
                        d1 = Int.random(in :1...6)
                        d2 = Int.random(in :1...6)
                        d3 = Int.random(in :1...6)
                        
                        start = true
                        
                        if Int(input)! >= (d1 + d2 + d3) {
                            totalNumber  = totalNumber + 100
                            result = "Right! +100"
                        }
                        else{
                            totalNumber  = totalNumber - 100
                            result = "Wrong! -100"

                        }
                        
                    },
                    label: {
                            Text("play").font(.largeTitle)
                    }
                )
                
            }
               
            Text("Prediction result: " + result).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            
            Text("Current amount:\(totalNumber)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

            
        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
