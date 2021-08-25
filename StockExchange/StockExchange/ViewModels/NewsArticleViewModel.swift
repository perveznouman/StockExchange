//
//  NewsArticleViewModel.swift
//  NewsArticleViewModel
//
//  Created by Nouman Pervez on 25/08/21.
//

import Foundation

struct NewsArticleViewModel {
    
    let article: Article
    
    var title: String {
        return article.title
    }
    
    var publication: String {
        return article.publication.uppercased()
    }
    
    var imageURL: String {
        return article.imageURL
    }
}
