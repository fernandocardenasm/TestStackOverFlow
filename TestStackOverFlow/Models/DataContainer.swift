//
//  DataContainer.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

struct DataContainer<Results: Decodable>: Decodable {
    let items: Results
}
