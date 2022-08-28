//
//  ContentView.swift
//  AcademyEquipes
//
//  Created by EDSON FELIPE VASCONCELOS on 26/08/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    
    var body: some View {
        VStack {
            Text("ciclo1")
                .foregroundColor(.blue)
            List(datas.equipes.ciclo1, id: \.self) { ciclo in
                ForEach(ciclo, id: \.self) { ci in
                    Text(ci)
                }
            }
            Text("ciclo2")
                .foregroundColor(.blue)
            List(datas.equipes.ciclo2, id: \.self) { ciclo in
                ForEach(ciclo, id: \.self) { ci in
                    Text(ci)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
