//
//  HelloScenePresenter.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

typealias HelloScenePresenterView = HelloSceneViewOutput
typealias HelloScenePresenterInteractor = HelloSceneInteractorOutput

class HelloScenePresenter {
    weak var view: HelloSceneViewInput!
    weak var transitionHandler: UIViewController!
    var interactor: HelloSceneInteractorInput!
    var outer: HelloSceneModuleOutput?
}


extension HelloScenePresenter {
    var nav: UINavigationController? {
        return self.transitionHandler.navigationController
    }

}

// MARK: - HelloScenePresenterView
extension HelloScenePresenter: HelloScenePresenterView {

}

// MARK: - HelloScenePresenterInteractor
extension HelloScenePresenter: HelloScenePresenterInteractor {

}

// MARK: - HelloSceneModuleInput
extension HelloScenePresenter: HelloSceneModuleInput {

}