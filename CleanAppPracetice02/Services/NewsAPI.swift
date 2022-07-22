//
//  NewsAPI.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 22/7/2565 BE.
//

import Foundation
import RxCocoa
import RxSwift

class NewsAPI: NewsStoreProtocol, NewsStoreUtilityProtocol{
    
    
    let disposeBag = DisposeBag()
    
    func fetchArticleNewsData(country:String,completion: @escaping ([Article]?, NewsStoreError?) -> Void) {
        URLRequest.load(resource: ArticleList.getNewsURLResource(country: country))
            .subscribe(onNext:{ result in
                if let result = result{
                    if !result.articles.isEmpty{
                        print("result.articles : \(result.articles)")
                        completion(result.articles, nil)
                    }else{
                        completion(result.articles, NewsStoreError.CannotFetch("array is empty"))
                    }
                    
                }else{
                    completion(nil,  NewsStoreError.CannotCreate("error something"))
                }
                
            }).disposed(by: disposeBag)
    }
}
