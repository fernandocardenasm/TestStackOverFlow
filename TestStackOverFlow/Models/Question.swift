//
//  Question.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

struct Question: Decodable {
    
    var tags: [String]?
    var owner: Owner?
    var score: Int?
    var creationDate: Date?
    
}
