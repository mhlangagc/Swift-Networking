//
//  NetworkController.swift
//  Networking
//
//  Created by Gugulethu Mhlanga on 2021/11/22.
//

import Foundation

final class NetworkController {

    func fetchNetwork(from urlPath: String,
                      with method: String,
                      completion: @escaping (CryptoCurrency?, Error?) -> Void)  {
        
        guard let url = URL(string: urlPath) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = method
        
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: configuration)
        
        urlSession.dataTask(with: request, completionHandler: { data, response, error in

            if let errorValue = error {
                return completion(nil, errorValue)
            }

            if let dataValue = data {
                do {
                    let model = try JSONDecoder().decode(CryptoCurrency.self, from: dataValue)
                    completion(model, nil)
                } catch let jsonError as NSError {
                    completion(nil, jsonError)
                }
            }
        }).resume()
    }
}
