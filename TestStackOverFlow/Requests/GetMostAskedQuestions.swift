//
//  GetMostAskedQuestions.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

struct GetMostAsquedQuestions: APIRequest {
    
    typealias Response = [Question]
    
    var resourceName: String {
        return "/questions"
    }
    
    //Parameters
    
    let site: String?
    let order: String?
    let sort: String?
    
    init(site: String? = "stackoverflow", order: String? = "desc", sort: String? = "votes") {
        self.site = site
        self.order = order
        self.sort = sort
    }
}
