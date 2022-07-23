//
//  DetailNewsModels.swift
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

enum DetailNews
{
  // MARK: Use cases
  
  enum ShowWebDetail
  {
    struct Request
    {
    }
    struct Response
    {
        var article: Article
    }
    struct ViewModel
    {
        var urlWebView: String
    }
  }
}