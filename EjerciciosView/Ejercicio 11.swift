//
//  Ejercicio 11.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct Ejercicio_11: View {
    @State private var input: String = ""
    @State private var output: String = ""

    var body: some View {
        VStack {
            Text("Cadena de entrada:")
            TextField("Ingrese la cadena", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .textInputAutocapitalization(.none)

            Button(action: processInput) {
                Text("Procesar")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Text("\(input) - \(output)")
                .font(.headline)
                .padding()
        }
    }

    func processInput() {
        switch input {
        case "hola", "Hola":
            output = "bienvenido"
        case "adios", "Adios":
            output = "bienvenido"
        case let x where x.contains("hola"):
            output = "¡Hola mundo!"
        case "saludar":
            output = "enviamos saludos pariente"
        case "":
            output = "silencio"
        default:
            output = "no podemos entender qué quiere"
        }
    }
}

struct Ejercicio_11_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio_11()
    }
}
