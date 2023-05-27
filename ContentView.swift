//
//  ContentView.swift
//  Ejercicios 9-13
//
//  Created by Javier Oskar Murillo Cota on 26/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView {
                List {
                    NavigationLink(destination: Ejercicio_9()) {
                        Text("Ir al Ejercicio 9")
                    }
                    NavigationLink(destination: Ejercicio_10()) {
                        Text("Ir al Ejercicio 10")
                    }
                    NavigationLink(destination: Ejercicio_11()) {
                        Text("Ir al Ejercicio 11")
                    }
                    NavigationLink(destination: Ejercicio_12()) {
                        Text("Ir al Ejercicio 12")
                    }
                    NavigationLink(destination: Ejercicio_13()) {
                        Text("Ir al Ejercicio 13")
                    }

                }
                .navigationTitle("Ejercicios")
            }
            .tabItem {
                 Label("Ejercicios", systemImage: "list.dash")
             }
             AboutMe()
                 .tabItem {
                     Label("About Me", systemImage: "person.circle")
                 }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
