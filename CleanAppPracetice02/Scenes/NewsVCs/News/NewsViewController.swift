//
//  NewsViewController.swift
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

protocol NewsDisplayLogic: AnyObject
{
    func displayArtileNews(viewModel: News.GetNews.ViewModel)
}

class NewsViewController: UIViewController, NewsDisplayLogic
{
    // MARK: Destination ViewController
    class func instantiateFromStoryboard() -> NewsViewController {
        let storyboard = UIStoryboard(name: "News", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! NewsViewController
    }
    // MARK: interactor, router
    var interactor: NewsBusinessLogic?
    var router: (NSObjectProtocol & NewsRoutingLogic & NewsDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = NewsInteractor()
        let presenter = NewsPresenter()
        let router = NewsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        fetchNews()
    }
    
    // MARK: Get News Articles
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func fetchNews()
    {
        let request = News.GetNews.Request()
        interactor?.loadArticleNews(request: request)
    }
    
    func displayArtileNews(viewModel: News.GetNews.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
