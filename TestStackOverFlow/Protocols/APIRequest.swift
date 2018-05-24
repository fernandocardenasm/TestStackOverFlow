//
//  APIRequest.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

protocol APIRequest: Encodable {
    
    associatedtype Response: Decodable
    
    var resourceName: String { get }
    
}
