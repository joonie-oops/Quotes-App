//
//  Quote.swift
//  Quotes App
//
//  Created by 박준우 on 2021/06/15.
//

import Foundation

class Quote: Decodable, Identifiable {
    var id:UUID?
    var author:String
    var quotes:[String]
    var image:String
}
