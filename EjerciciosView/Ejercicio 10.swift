//
//  Ejercicio 10.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct Ejercicio_10: View {
    @State private var score: Int = 0
    @State private var evaluation: String = ""
    @State private var isApproved: String = ""

    var body: some View {
        VStack {
            Text("Calificación:")
            TextField("Ingrese la calificación", value: $score, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: evaluate) {
                Text("Evaluar")
                    .font(.headline)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Text("Evaluación: \(evaluation)")
                .font(.title)
                .padding()

            Text("Estado de aprobación: \(isApproved)")
                .font(.title)
                .padding()
        }
    }

    func evaluate() {
        switch score {
        case 0...59:
            evaluation = "Insuficiente"
        case 60...69:
            evaluation = "Suficiente"
        case 70...79:
            evaluation = "Regular"
        case 80...89:
            evaluation = "Muy bien"
        case 90...100:
            evaluation = "Excelente"
        default:
            evaluation = "Calificación no definida"
        }

        switch score {
        case 0...59:
            isApproved = "No aprobado"
        case 60...100:
            isApproved = "Aprobado"
        default:
            isApproved = "Estado de aprobación no definido"
        }
    }
}

struct Ejercicio_10_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio_10()
    }
}
