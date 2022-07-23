//
//  DetailNewsInteractor.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 22/7/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DetailNewsBusinessLogic
{
  func showDetailWebView(request: DetailNews.ShowWebDetail.Request)
}

protocol DetailNewsDataStore
{
  var article: Article { get set }
}

class DetailNewsInteractor: DetailNewsBusinessLogic, DetailNewsDataStore
{
  var presenter: DetailNewsPresentationLogic?
  var worker: DetailNewsWorker?
  var article: Article = Article(author: "", title: "", description: "", url: "", urlToImage: "")
  
  // MARK: Do something
  
  func showDetailWebView(request: DetailNews.ShowWebDetail.Request)
  {
    worker = DetailNewsWorker()
    worker?.doSomeWork()
    
      let response = DetailNews.ShowWebDetail.Response(article: article)
    presenter?.presentDetailWebView(response: response)
  }
}