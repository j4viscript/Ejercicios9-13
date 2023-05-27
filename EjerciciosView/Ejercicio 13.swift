//
//  13.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct Ejercicio_13: View {
    let numbers = [5, 6, 8, 10, 1, 4, 14, 5, 3, 20]
    
    var body: some View {
        VStack {
            Text("Lista de números: \(numbers.map(String.init).joined(separator: ", "))")
                .font(.title)
                .padding()
            
            if let minMax = findMinMax(numbers: numbers) {
                Text("Valor menor: \(minMax.min)")
                    .font(.title)
                    .padding()
                
                Text("Valor mayor: \(minMax.max)")
                    .font(.title)
                    .padding()
            } else {
                Text("La lista de números está vacía.")
                    .font(.title)
                    .padding()
            }
        }
    }
    
    func findMinMax(numbers: [Int]) -> (min: Int, max: Int)? {
        guard let firstNumber = numbers.first else {
            return nil
        }
        
        var minNumber = firstNumber
        var maxNumber = firstNumber
        
        for number in numbers {
            if number < minNumber {
                minNumber = number
            }
            
            if number > maxNumber {
                maxNumber = number
            }
        }
        
        return (minNumber, maxNumber)
    }
}

struct Ejercicio_13_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio_13()
    }
}

