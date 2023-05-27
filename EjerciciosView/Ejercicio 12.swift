//
//  Ejercicio 12.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct Ejercicio_12: View {
    @State private var numbers: [Int] = []
    @State private var input: String = ""

    var sum: Int {
        numbers.reduce(0, +)
    }

    var average: Int {
        numbers.isEmpty ? 0 : sum / numbers.count
    }

    var body: some View {
        VStack {
            Text("Números: \(numbers.map(String.init).joined(separator: ", "))")
                .font(.title)
                .padding()

            Text("Suma: \(sum)")
                .font(.title)
                .padding()

            Text("Promedio: \(average)")
                .font(.title)
                .padding()

            TextField("Ingrese un número (0-10)", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            Button(action: addNumber) {
                Text("Agregar número")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }

    func addNumber() {
        if let number = Int(input), number >= 0, number <= 10 {
            numbers.append(number)
            input = ""
        }
    }
}

struct Ejercicio_12_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio_12()
    }
}
