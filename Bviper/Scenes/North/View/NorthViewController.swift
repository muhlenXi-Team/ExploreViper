//
//  NorthViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class NorthViewController: UIViewController {
    var output: NorthViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavItems()
        self.setupSubViews()
        self.addObserverForNoti()
    }
}


// MARK: - Assistant
extension NorthViewController {
    
    func setupNavItems() {
    
    }
    
    func setupSubViews() {

    }
    
    func addObserverForNoti() {
    
    }
    
}


// MARK: - Network
extension NorthViewController {

}


// MARK: - Delegate,按照需要遵守代理协议
extension NorthViewController {

}


// MARK: - ClickEvents/Notification
extension NorthViewController {

    // method for button click event
    func onClickNorthBtn(sender: UIButton) {
    
    }
    
    // method for recv notification 
    func onRecvNorthNoti(noti: Notification) {
    
    }
}


// MARK: - NorthViewInput 
extension NorthViewController: NorthViewInput {

}


// MARK: - NorthModuleBuilder
 class NorthModuleBuilder {
   
    class func setupModule(handler: NorthModuleOutput? = nil) ->  (UIViewController, NorthModuleInput) {
        let viewController = NorthViewController()
        
        let presenter = NorthPresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = NorthInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}