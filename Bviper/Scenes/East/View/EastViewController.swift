//
//  EastViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class EastViewController: UIViewController {
    var output: EastViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavItems()
        self.setupSubViews()
        self.addObserverForNoti()
    }
}


// MARK: - Assistant
extension EastViewController {
    
    func setupNavItems() {
    
    }
    
    func setupSubViews() {
        self.view.backgroundColor = UIColor.white
    }
    
    func addObserverForNoti() {
    
    }
    
}


// MARK: - Network
extension EastViewController {

}


// MARK: - Delegate,按照需要遵守代理协议
extension EastViewController {

}


// MARK: - ClickEvents/Notification
extension EastViewController {

    // method for button click event
    func onClickEastBtn(sender: UIButton) {
    
    }
    
    // method for recv notification 
    func onRecvEastNoti(noti: Notification) {
    
    }
}


// MARK: - EastViewInput 
extension EastViewController: EastViewInput {

}


// MARK: - EastModuleBuilder
 class EastModuleBuilder {
   
    class func setupModule(handler: EastModuleOutput? = nil) ->  (UIViewController, EastModuleInput) {
        let viewController = EastViewController()
        
        let presenter = EastPresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = EastInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}
