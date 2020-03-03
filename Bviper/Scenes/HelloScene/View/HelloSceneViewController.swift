//
//  HelloSceneViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class HelloSceneViewController: UIViewController {
    var output: HelloSceneViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavItems()
        self.setupSubViews()
        self.addObserverForNoti()
    }
}


// MARK: - Assistant
extension HelloSceneViewController {
    
    func setupNavItems() {
    
    }
    
    func setupSubViews() {

    }
    
    func addObserverForNoti() {
    
    }
    
}


// MARK: - Network
extension HelloSceneViewController {

}


// MARK: - Delegate,按照需要遵守代理协议
extension HelloSceneViewController {

}


// MARK: - ClickEvents/Notification
extension HelloSceneViewController {

    // method for button click event
    func onClickHelloSceneBtn(sender: UIButton) {
    
    }
    
    // method for recv notification 
    func onRecvHelloSceneNoti(noti: Notification) {
    
    }
}


// MARK: - HelloSceneViewInput 
extension HelloSceneViewController: HelloSceneViewInput {

}


// MARK: - HelloSceneModuleBuilder
 class HelloSceneModuleBuilder {
   
    class func setupModule(handler: HelloSceneModuleOutput? = nil) ->  (UIViewController, HelloSceneModuleInput) {
        let viewController = HelloSceneViewController()
        
        let presenter = HelloScenePresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = HelloSceneInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}