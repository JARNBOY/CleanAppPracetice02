//
//  HomeModels.swift
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

enum Home
{
  // MARK: Use cases
  
  enum UserLogin
  {
    struct Request
    {
    }
    struct Response
    {
        var profile:Profile
    }
    struct ViewModel
    {
        struct DisplayProfileUser{
            var phone: String = ""
            var email: String = ""
        }
        var displayProfile:DisplayProfileUser
        
    }
  }
}
