//
//  HomeScreen.swift
//  HomeScreen
//
//  Created by Nouman Pervez on 25/08/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject private var stockListVM = StockListViewModel()

    init() {
        stockListVM.fetchStock()
        stockListVM.fetchNews()
    }
    
    var body: some View {
        
        let filter = self.stockListVM.searchTerm.isEmpty ? self.stockListVM.stockList : self.stockListVM.stockList.filter {
            $0.description.starts(with: self.stockListVM.searchTerm)
        }
        
      return  NavigationView {
            ZStack(alignment: .leading) {
                Color.black
                Text("August 21, 2021")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -360)
                    
                SearchView(searchTerm: self.$stockListVM.searchTerm)
                    .offset(y: -270)
                StockListView(stocks: filter)
                    .offset(y: 150)
            }
            .navigationBarTitle("Stocks")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
