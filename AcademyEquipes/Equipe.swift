//
//  Equipes.swift
//  AcademyEquipes
//
//  Created by EDSON FELIPE VASCONCELOS on 26/08/22.
//

import Foundation

struct Equipe: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case ciclo1
        case ciclo2
    }
    
    var id = UUID()
    var ciclo1: [[String]]
    var ciclo2: [[String]]
}

//It gives an error in the definition of the class I created to decode the json...

class ReadData: ObservableObject {
    @Published var equipes = Equipe(ciclo1: [[]], ciclo2: [[]]))

    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "Contents", withExtension: "json")
        else {
            print("Json file not found!")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let equipes = try? JSONDecoder().decode(Equipe.self, from: data!)
        self.equipes = equipes!
    }
}
