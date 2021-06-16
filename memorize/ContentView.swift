//
//  ContentView.swift
//  memorize
//
//  Created by Grace on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    var vehicleEmojis = ["🚗","🚕","🚙","🚛","🚒","🚐","🛻","🚜","🚓","🏎","🚎","🚌","🚑","🛺","🚃","🚋","🛵"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(vehicleEmojis[0..<emojiCount], id: \.self) {
                        emoji in CardView(cardContent: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            HStack {
                remove
                Spacer()
                add
            }
        }
        .padding(.horizontal)
    }
    
    var add: some View {
        Button(action: {
            if emojiCount < vehicleEmojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus")
                .resizable(resizingMode: .stretch)
                .frame(width: 30, height: 30)
        }).padding()
    }
    var remove: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus")
                .resizable(resizingMode: .stretch)
                .frame(width: 30, height: 3)
        }).padding(.horizontal)
    }
}

struct  CardView: View {
    var cardContent: String
    @State var isFaceUp = true
    var body: some View{

        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.strokeBorder(lineWidth: 3)
                
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
