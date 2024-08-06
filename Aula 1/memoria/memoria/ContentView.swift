//
//  ContentView.swift
//  memoria
//
//  Created by found on 06/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4) { index in
                VStack {
                    ForEach(0..<5) { index in
                        CartaoView(isFaceUp: true)
                    }
                }
            }
        }
            .padding()
    }
}


struct CartaoView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                    .stroke(Color.orange, lineWidth: 3.0)
                Text("👻").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.orange)
            }
        }
    }
}


#Preview {
    ContentView()
}
