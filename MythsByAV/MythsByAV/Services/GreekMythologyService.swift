//
//  GreekMythologyService.swift
//  MythsByAV
//
//  Created by Alumnos on 11/16/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import Foundation

class GreekMythologyService {
    func getGods(completion: @escaping ([God]?) ->()) {
        guard let url = URL(string: "https://private-anon-9c78fdc1d3-greekmythology1.apiary-mock.com/gods") else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            let gods = try? JSONDecoder().decode([God].self, from: data)
            DispatchQueue.main.async {
                completion(gods)
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    func getHeroes(completion: @escaping ([Hero]?) ->()) {
        guard let url = URL(string: "https://private-anon-ca2aa44c44-greekmythology1.apiary-mock.com/heroes") else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            let heroes = try? JSONDecoder().decode([Hero].self, from: data)
            DispatchQueue.main.async {
                completion(heroes)
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
    func getMyths(completion: @escaping ([Myth]?) -> ()){
        guard let url = URL(string: "https://private-anon-9c78fdc1d3-greekmythology1.apiary-mock.com/myths") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) {data,response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            let myths = try? JSONDecoder().decode([Myth].self, from: data)
            DispatchQueue.main.async {
                completion(myths)
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }.resume()
    }

}
