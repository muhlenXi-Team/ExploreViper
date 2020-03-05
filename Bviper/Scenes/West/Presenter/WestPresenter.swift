//
//  WestPresenter.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

typealias WestPresenterView = WestViewOutput
typealias WestPresenterInteractor = WestInteractorOutput

class WestPresenter {
    weak var view: WestViewInput!
    weak var transitionHandler: UIViewController!
    var interactor: WestInteractorInput!
    var outer: WestModuleOutput?
}


extension WestPresenter {
    var nav: UINavigationController? {
        return self.transitionHandler.navigationController
    }

}

// MARK: - WestPresenterView
extension WestPresenter: WestPresenterView {

}

// MARK: - WestPresenterInteractor
extension WestPresenter: WestPresenterInteractor {

}

// MARK: - WestModuleInput
extension WestPresenter: WestModuleInput {

}