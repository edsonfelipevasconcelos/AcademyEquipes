//
//  Equipes.swift
//  AcademyEquipes
//
//  Created by EDSON FELIPE VASCONCELOS on 26/08/22.
//

import Foundation

struct Equipe: Codable, Identifiable {
    let id = UUID()
    var ciclo1: [[String]]
    var ciclo2: [[String]]
    
    enum CodingKeys: CodingKey {
        case ciclo1
        case ciclo2
    }
}

class ReadData: ObservableObject {
    @Published var equipes = Equipe(ciclo1: [[]], ciclo2: [[]])
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "Contents", withExtension: "json") else {
            print("Json file not found!")
            return
        }
        do {
            let data = try Data(contentsOf: url)
            equipes = try JSONDecoder().decode(Equipe.self, from: data)
        } catch {
            print(error)
        }
    }
}

//func verificarEquipes(ciclo1: [[String]], ciclo2: [[String]]) {
//    for i in ciclo1 {
//        for j in ciclo2 {
//            if i.contains(<#T##element: String##String#>)
//        }
//    }
//}


