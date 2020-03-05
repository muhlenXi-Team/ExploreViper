//
//  SouthViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class SouthViewController: UIViewController {
    var output: SouthViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavItems()
        self.setupSubViews()
        self.addObserverForNoti()
    }
}


// MARK: - Assistant
extension SouthViewController {
    
    func setupNavItems() {
    
    }
    
    func setupSubViews() {

    }
    
    func addObserverForNoti() {
    
    }
    
}


// MARK: - Network
extension SouthViewController {

}


// MARK: - Delegate,按照需要遵守代理协议
extension SouthViewController {

}


// MARK: - ClickEvents/Notification
extension SouthViewController {

    // method for button click event
    func onClickSouthBtn(sender: UIButton) {
    
    }
    
    // method for recv notification 
    func onRecvSouthNoti(noti: Notification) {
    
    }
}


// MARK: - SouthViewInput 
extension SouthViewController: SouthViewInput {

}


// MARK: - SouthModuleBuilder
 class SouthModuleBuilder {
   
    class func setupModule(handler: SouthModuleOutput? = nil) ->  (UIViewController, SouthModuleInput) {
        let viewController = SouthViewController()
        
        let presenter = SouthPresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = SouthInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}