//
//  ContentView.swift
//  AcademyEquipes
//
//  Created by EDSON FELIPE VASCONCELOS on 26/08/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    
    var ciclo3 = [[String]]()
    
    var body: some View {
        VStack {
            Text("Ciclo1")
                .foregroundColor(.blue)
            List(Array(datas.equipes.ciclo1.enumerated()), id: \.offset) { index, ciclo in
                    ForEach(ciclo, id: \.self) { ci in
                        HStack {
                            Text("Equipe: \(index + 1)")
                            Spacer()
                            Text("Aluno: \(ci)")
                        }
                    }
            }
            
            Text("Ciclo2")
                .foregroundColor(.blue)
            List(Array(datas.equipes.ciclo2.enumerated()), id: \.offset) { index, ciclo in
                ForEach(ciclo, id: \.self) { ci in
                    HStack {
                        Text("Equipe: \(index + 1)")
                        Spacer()
                        Text("Aluno: \(ci)")
                    }
                }
            }
            Text("Ciclo3")
                .foregroundColor(.blue)
            List {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
