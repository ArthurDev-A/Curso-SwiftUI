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
                CartaoView(isFaceCima: true)
            }
        }
            .padding()
    }
}


struct CartaoView: View {
    var isFaceCima: Bool
    
    var body: some View {
        ZStack{
            if isFaceCima {
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
