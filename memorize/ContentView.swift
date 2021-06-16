//
//  ContentView.swift
//  memorize
//
//  Created by Grace on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Horizontal Stack
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct  CardView: View {
    var cardContent: String
    @State var isFaceUp = true
    var body: some View{
        
//        Z Plane Stack: stacking forward towards you
        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                
                Text(cardContent).font(.largeTitle)
                
            } else {
                cardShape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
