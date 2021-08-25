//
//  WebServiceManager.swift
//  Stock
//
//  Created by Nouman Pervez on 05/08/21.
//

import Foundation

class WebServiceManager {
    
    func getTopNews(completion: @escaping (([Article]?) -> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/top-news") else {
            fatalError("News not found")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            let article = try? JSONDecoder().decode([Article].self, from: data)
            DispatchQueue.main.async {
                completion(article)
            }
        }.resume()
    }
    
    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            fatalError("Incorrect URL")
        }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)
            
        }).resume()
    }
}
