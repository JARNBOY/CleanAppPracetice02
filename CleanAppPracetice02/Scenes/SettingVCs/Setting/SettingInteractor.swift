//
//  SettingInteractor.swift
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

protocol SettingBusinessLogic
{
  func doSomething(request: Setting.Something.Request)
}

protocol SettingDataStore
{
  //var name: String { get set }
}

class SettingInteractor: SettingBusinessLogic, SettingDataStore
{
  var presenter: SettingPresentationLogic?
  var worker: SettingWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Setting.Something.Request)
  {
    worker = SettingWorker()
    worker?.doSomeWork()
    
    let response = Setting.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
