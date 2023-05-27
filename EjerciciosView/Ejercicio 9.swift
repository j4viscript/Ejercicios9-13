//
//  Ejercicio 9.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct Ejercicio_9: View {
    @State private var age: Int = 0
       @State private var stage: String = ""

       var body: some View {
           VStack {
               Text("Edad:")
               TextField("Ingrese la edad", value: $age, formatter: NumberFormatter())
                   .keyboardType(.numberPad)
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                   .padding()

               Button(action: calculateStage) {
                   Text("Calcular")
                       .font(.headline)
                       .padding(.horizontal, 10)
                       .padding(.vertical, 5)
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }

               Text("Etapa: \(stage)")
                   .font(.title)
                   .padding()
           }
       }

       func calculateStage() {
           switch age {
           case 0...5:
               stage = "Infancia"
           case 6...11:
               stage = "Niñez"
           case 12...19:
               stage = "Adolescencia"
           case 20...30:
               stage = "Juventud"
           case 31...59:
               stage = "Adultez"
           case 60...120:
               stage = "Ancianidad"
           default:
               stage = "Etapa no definida"
           }
       }
}

struct Ejercicio_9_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio_9()
    }
}
