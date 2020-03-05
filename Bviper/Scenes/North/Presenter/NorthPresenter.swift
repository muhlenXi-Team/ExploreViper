//
//  NorthPresenter.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

typealias NorthPresenterView = NorthViewOutput
typealias NorthPresenterInteractor = NorthInteractorOutput

class NorthPresenter {
    weak var view: NorthViewInput!
    weak var transitionHandler: UIViewController!
    var interactor: NorthInteractorInput!
    var outer: NorthModuleOutput?
}


extension NorthPresenter {
    var nav: UINavigationController? {
        return self.transitionHandler.navigationController
    }

}

// MARK: - NorthPresenterView
extension NorthPresenter: NorthPresenterView {

}

// MARK: - NorthPresenterInteractor
extension NorthPresenter: NorthPresenterInteractor {

}

// MARK: - NorthModuleInput
extension NorthPresenter: NorthModuleInput {

}