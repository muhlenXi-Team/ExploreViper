//
//  SouthPresenter.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

typealias SouthPresenterView = SouthViewOutput
typealias SouthPresenterInteractor = SouthInteractorOutput

class SouthPresenter {
    weak var view: SouthViewInput!
    weak var transitionHandler: UIViewController!
    var interactor: SouthInteractorInput!
    var outer: SouthModuleOutput?
}


extension SouthPresenter {
    var nav: UINavigationController? {
        return self.transitionHandler.navigationController
    }

}

// MARK: - SouthPresenterView
extension SouthPresenter: SouthPresenterView {

}

// MARK: - SouthPresenterInteractor
extension SouthPresenter: SouthPresenterInteractor {

}

// MARK: - SouthModuleInput
extension SouthPresenter: SouthModuleInput {

}