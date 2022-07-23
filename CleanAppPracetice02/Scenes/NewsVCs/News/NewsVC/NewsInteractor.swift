//
//  NewsInteractor.swift
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

protocol NewsBusinessLogic
{
    func loadArticleNews(request: News.GetNews.Request)
    func selectNewsDetail(request: News.SelectNews.Request)
}

protocol NewsDataStore
{
    var article:Article { get set }
    var articles:[Article] { get set }
}

class NewsInteractor: NewsBusinessLogic, NewsDataStore
{
    
    var presenter: NewsPresentationLogic?
    var newsWorker: NewsWorker = NewsWorker(newsStore: NewsAPI())
    var articles: [Article] = []
    var article: Article = Article(author: "", title: "", description: "", url: "", urlToImage: "")
    // MARK: loadArticleNews Data
    
    func loadArticleNews(request: News.GetNews.Request)
    {
        newsWorker.fetchNewsData(country: request.country) { list in
            self.articles = list.articles
            let response = News.GetNews.Response(articles: list.articles)
            self.presenter?.presentArticleNews(response: response)
        }
    }
    
    // MARK: select News Detail
    func selectNewsDetail(request: News.SelectNews.Request) {
        let response = News.SelectNews.Response(article:request.article)
        self.presenter?.presentNewsDetail(response: response)
    }
    
    
    
}
