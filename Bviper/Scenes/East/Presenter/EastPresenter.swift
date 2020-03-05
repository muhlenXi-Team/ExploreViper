//
//  EastPresenter.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

typealias EastPresenterView = EastViewOutput
typealias EastPresenterInteractor = EastInteractorOutput

class EastPresenter {
    weak var view: EastViewInput!
    weak var transitionHandler: UIViewController!
    var interactor: EastInteractorInput!
    var outer: EastModuleOutput?
}


extension EastPresenter {
    var nav: UINavigationController? {
        return self.transitionHandler.navigationController
    }

}

// MARK: - EastPresenterView
extension EastPresenter: EastPresenterView {

}

// MARK: - EastPresenterInteractor
extension EastPresenter: EastPresenterInteractor {

}

// MARK: - EastModuleInput
extension EastPresenter: EastModuleInput {

}