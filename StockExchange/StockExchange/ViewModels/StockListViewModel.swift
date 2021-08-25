//
//  StockListViewModel.swift
//  Stock
//
//  Created by Nouman Pervez on 05/08/21.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    var searchTerm = ""
    @Published var stockList: [StockViewModel] = [StockViewModel]()
    @Published var newsList: [NewsArticleViewModel] = [NewsArticleViewModel]()
}

extension StockListViewModel {
    
    func fetchNews() {
        WebServiceManager().getTopNews(completion: { news in
            if let news = news {
                self.newsList = news.map(NewsArticleViewModel.init)
            }
        })
    }
    
    func fetchStock() {
        WebServiceManager().getStocks(completion: { stocks in
            if let stock = stocks {
                DispatchQueue.main.async {
                    self.stockList = stock.map(StockViewModel.init)
                }
            }
        })
    }
}
