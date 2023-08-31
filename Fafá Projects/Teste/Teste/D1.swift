//
//  D1.swift
//  Teste
//
//  Created by Student13 on 31/08/23.
//

import SwiftUI

struct D1: View {
    var body: some View {
        VStack{
            Image("caminhao").resizable().scaledToFill().padding(.bottom, 17.0)
            ZStack{
                Image("caminhao").resizable().frame(width: 200, height: 200).cornerRadius(300).padding(.bottom)
                Text("HackaTruck").foregroundColor(.blue).bold().font(.title).padding(.bottom, 100.0)
            }
            ZStack{
                Rectangle().padding([ .leading, .trailing], 70)
                HStack{
                    Text("Maker").foregroundColor(.yellow).font(.title)
                    Text("Space")
                    .foregroundColor(.red) .font(.title)               }.padding(.bottom, 30)
                
            }
            
        }
    }
}

struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}
