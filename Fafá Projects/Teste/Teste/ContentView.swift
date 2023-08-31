//
//  ContentView.swift
//  Teste
//
//  Created by Student13 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().scaledToFit().padding(.horizontal)
            Text("HackaTruck").font(.title).bold().foregroundColor(.blue)
            HStack{
                Text("Maker").foregroundColor(.yellow)
                Text("Space").foregroundColor(.red)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
