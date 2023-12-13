//
//  ContentView.swift
//  Memorize
//
//  Created by Aaryan Sinha on 12/3/23.
//

import SwiftUI


// The struct "ContentView" behaves like a View
struct ContentView: View {
    

    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }.padding().foregroundColor(.orange)
    
    }
}

struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack (content:  {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }

        })
    }
}


#Preview {
    ContentView()
}
