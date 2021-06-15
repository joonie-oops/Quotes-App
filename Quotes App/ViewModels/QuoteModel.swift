//
//  QuoteModel.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/15.
//

import Foundation

class QuoteModel {
    var quotes:[Quote]
    
    init() {
        quotes = DataService.getLocalData()
    }
}
