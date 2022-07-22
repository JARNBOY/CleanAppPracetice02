//
//  ArticleNews.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 22/7/2565 BE.
//

import Foundation
//MARK: Response data properties 
struct ArticleList:Codable{
    let articles:[Article]
}

//MARK: Resource URL
extension ArticleList{
//    static var all : Resource<ArticleList> = {
//        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0bfb7217d29740c3a8ca13fda1c95a49")!
//        return Resource(url: url)
//    }()
    static func getNewsURLResource(country:String) -> Resource<ArticleList>{
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=\(country)&apiKey=0bfb7217d29740c3a8ca13fda1c95a49")!
        return Resource(url: url)
    }
}

//MARK: Class response data properties
struct Article:Codable{
    let author:String?
    let title:String
    let description:String?
    let url:String?
    let urlToImage:String?
}

//MARK: Error response case properties
enum NewsStoreError: Equatable, Error
{
  case CannotFetch(String)
  case CannotCreate(String)
  case CannotUpdate(String)
  case CannotDelete(String)
}
