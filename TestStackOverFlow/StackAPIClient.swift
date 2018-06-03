//
//  StackAPIClient.swift
//  TestStackOverFlow
//
//  Created by Fernando on 14.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation

public class StackAPIClient: APIClient {
    public let baseEndpoint = "https://api.stackexchange.com/2.2"
    private let session = URLSession(configuration: .default)
    
    func send<T: APIRequest>(_ request: T, completion: @escaping ResultCallback<DataContainer<T.Response>>) {
        
        let endpoint = self.endpoint(for: request)
        
        
        let task = session.dataTask(with: URLRequest(url: endpoint)) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    decoder.dateDecodingStrategy = .secondsSince1970
                    
                    let stackResponse = try decoder.decode(DataContainer<T.Response>.self, from: data)
                    
                    completion(.success(stackResponse))
                    
                    //                    print("Stackresponse: \(stackResponse)")
                    //
                    //                    if let dataContainer = stackResponse.data {
                    //                        completion(.success(dataContainer))
                    //                    }
                    //                    else if let message = stackResponse.message {
                    //                        completion(.failure(StackError.server(message: message)))
                    //                    }
                    //                    else {
                    //                        completion(.failure(StackError.decoding))
                    //                    }
                } catch {
                    completion(.failure(error))
                }
            }
            else if let error = error {
                completion(.failure(error))
            }
        }
        
        task.resume()
        
        
    }
    
    func endpoint<T: APIRequest>(for request: T) -> URL {
        guard let parameters = try? URLQueryEncoder.encode(request) else { fatalError("Wrong parameters")}
        
        return URL(string: "\(baseEndpoint)\(request.resourceName)?\(parameters)")!
        
    }
    
}
