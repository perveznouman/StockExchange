//
//  ContentView.swift
//  StockExchange
//
//  Created by Nouman Pervez on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
//        
//        UINavigationBar.appearance().backgroundColor = UIColor.black
//        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        UITableView.appearance().backgroundColor = UIColor.black
//        UITableViewCell.appearance().backgroundColor = UIColor.black
//    }
    
    var body: some View {
                
        NavigationView {
            ZStack(alignment: .leading) {
                Color.black
                Text("August 21, 2021")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -400)
            }
            .navigationBarTitle("Stocks")
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
