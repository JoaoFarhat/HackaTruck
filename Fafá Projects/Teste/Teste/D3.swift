//
//  D3.swift
//  Teste
//
//  Created by Student13 on 01/09/23.
//

import SwiftUI

struct D3: View {
    @State private var peso: String = ""
    @State private var altura:String = ""
    @State private var resultado:String = ""
    @State var IMC = ""
    @State var corFundo:Color = Color(.white)
    
    var body: some View {
        VStack{
            Text("Calculadora de IMC").font(.largeTitle)
            HStack {
                TextField("Digite seu Peso", text: $peso)
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(5)
            }
            .padding(.bottom)
            HStack {
                TextField("Digite seu Peso", text: $altura)
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(5)
            }
            .padding(.bottom)
            Button("Calcular"){
                
                resultado = calcularIMC(peso: peso, altura: altura)
                corFundo = trocarCor(resultado: resultado)
                
            }.foregroundColor(.white)
                .padding(17.0)
                .background(.blue)
                .cornerRadius(10)
            Spacer()
            Text(resultado)
                .font(.largeTitle)
                .foregroundColor(.white)
            Spacer()
            Image("imc").resizable().scaledToFit()
        }
        .padding(.horizontal)
        .background(corFundo)
    }
}
    
    
    func trocarCor (resultado: String) -> Color{
        var corFundo:Color = Color(.white)
        
        if resultado == "Baixo Peso"{
            corFundo = Color("BaixoPeso")
        } else if resultado == "Normal"{
            corFundo = Color("Normal")
        } else if resultado == "Sobrepeso"{
            corFundo = Color("Sobrepeso")
        } else if resultado == "Obesidade"{
            corFundo = Color("Obesidade")
        }
        return corFundo

    }
    
    func calcularIMC (peso: String, altura: String) -> String {
        var IMC = ""
        
        let peso1 = (peso as NSString).doubleValue
        let altura1 = (altura as NSString).doubleValue
        
        let imC = peso1 / pow(altura1, 2)
        
        if (imC < 18.5) {
            IMC = "Baixo Peso"
        } else if (imC >= 18.5 && imC <= 24.99){
            IMC = "Normal"
        } else if (imC >= 25 && imC <= 29.99){
            IMC = "Sobrepeso"
        } else if (imC >= 30) {
            IMC = "Obesidade"
        }

        return IMC
    }
    
struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
