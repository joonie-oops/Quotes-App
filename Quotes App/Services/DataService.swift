//
//  DataService.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/15.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                for quote in quoteData {
                    quote.id = UUID()
                }
                return quoteData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
}
