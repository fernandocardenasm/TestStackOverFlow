//
//  APIClient.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

protocol APIClient {
    
    func send<T: APIRequest>(_ request: T,
                             completion: @escaping ResultCallback<DataContainer<T.Response>>)
    
}
