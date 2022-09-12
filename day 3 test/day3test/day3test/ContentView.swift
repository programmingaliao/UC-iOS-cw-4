//
//  ContentView.swift
//  day3test
//
//  Created by Ali Al-Otaibi on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var hello = ["Pepsi", "Doritos", "Noodles", "Tomato", "Shani"]
    @State var text = ""
    
    
    var body: some View {
        VStack {
            HStack {
                
                
                
            
        

                
                
            
            List(hello, id: \.self) { hi in
                HStack {
                Text(hi)
                    Image(hi).resizable().scaledToFit().frame(width: 100, height: 100)
                }
            
            }
                
            }
           
            HStack {
                
            

            
            TextField("Groceries", text:$text)
                Button (action: { hello.append(text)
                    
                }) {
                    Image(systemName: "plus.circle.fill")
                        
                    
                        
                }
                    Button(action: {
                        hello.remove(at:0)
                        
                        
                    }) {
                        
                        Image(systemName: "minus.circle.fill")
                        
                    }
                Button(action: {
                    let r = hello.randomElement() ?? "try again"
                    hello.append(r)
                }) {
                    Image(systemName: "questionmark.circle.fill")
                    
                }
            .padding()
               
                Spacer()
            }
            .font(.largeTitle)
            
            }
            
        }
}
            


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
