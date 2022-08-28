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
        List {
            VStack {
                Text("teste \(datas.equipes)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
