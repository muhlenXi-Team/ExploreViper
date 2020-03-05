//
//  WestViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class WestViewController: UIViewController {
    var output: WestViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavItems()
        self.setupSubViews()
        self.addObserverForNoti()
    }
}


// MARK: - Assistant
extension WestViewController {
    
    func setupNavItems() {
    
    }
    
    func setupSubViews() {

    }
    
    func addObserverForNoti() {
    
    }
    
}


// MARK: - Network
extension WestViewController {

}


// MARK: - Delegate,按照需要遵守代理协议
extension WestViewController {

}


// MARK: - ClickEvents/Notification
extension WestViewController {

    // method for button click event
    func onClickWestBtn(sender: UIButton) {
    
    }
    
    // method for recv notification 
    func onRecvWestNoti(noti: Notification) {
    
    }
}


// MARK: - WestViewInput 
extension WestViewController: WestViewInput {

}


// MARK: - WestModuleBuilder
 class WestModuleBuilder {
   
    class func setupModule(handler: WestModuleOutput? = nil) ->  (UIViewController, WestModuleInput) {
        let viewController = WestViewController()
        
        let presenter = WestPresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = WestInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}