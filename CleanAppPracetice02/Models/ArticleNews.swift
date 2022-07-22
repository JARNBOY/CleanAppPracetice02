//
//  ArticleNews.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 22/7/2565 BE.
//

import Foundation

struct ArticleList:Codable{
    let articles:[Article]
}

extension ArticleList{
    static var all : Resource<[Article]> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0bfb7217d29740c3a8ca13fda1c95a49")!
        return Resource(url: url)
    }()
}

struct Article:Codable{
    let author:String?
    let title:String
    let description:String?
}

enum NewsStoreError: Equatable, Error
{
  case CannotFetch(String)
  case CannotCreate(String)
  case CannotUpdate(String)
  case CannotDelete(String)
}
