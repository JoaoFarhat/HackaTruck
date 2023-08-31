//
//  D2.swift
//  Teste
//
//  Created by Student13 on 31/08/23.
//

import SwiftUI

struct D2: View {
    @State private var fulano: String = ""
    @State private var alerta = false
    var body: some View {
        ZStack{
            Image("caminhao").resizable().scaledToFill().opacity(0.1).ignoresSafeArea(.all)
            VStack{
                Text("Bem vindo, " + fulano).font(.largeTitle)
                TextField("nome", text: $fulano).multilineTextAlignment(.center).padding(.bottom, 180)
            
                    
                Image("logo").resizable().scaledToFit().frame(width: 200)
                Image("truck").resizable().scaledToFit().frame(width: 300).padding(.bottom, 150)
                    Button("Entrar"){
                        alerta = true
                    }
                    .alert(isPresented: $alerta){
                        Alert(title: Text("ALERTA!"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton:.default(Text("Vamos lá")))
            }

            }
            
        }
        
    }
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
