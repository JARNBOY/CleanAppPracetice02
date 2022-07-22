//
//  NewsWorker.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 20/7/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class NewsWorker
{
    var newsStore: NewsStoreProtocol
    
    init(newsStore: NewsStoreProtocol)
    {
      self.newsStore = newsStore
    }
    
    func fetchNewsData(country:String,completionHandler: @escaping (ArticleList) -> Void)
    {
        newsStore.fetchArticleNewsData(country: country) { articles, error in
            if let articles = articles{
                completionHandler(ArticleList(articles: articles))
            }
        }
    }
}

// MARK: - News API

protocol NewsStoreProtocol{
    func fetchArticleNewsData(country:String,completion: @escaping ([Article]?, NewsStoreError?) -> Void)
}

protocol NewsStoreUtilityProtocol {
    
}
