//
//  StackError.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

public enum StackError: Error {
    case decoding
    case encoding
    case server(message: String)
}
