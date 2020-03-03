//
//  HelloSceneHelloSceneInteractor.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - Entity
class HelloSceneEntity {

}


// MARK: - Interactor
class HelloSceneInteractor{
    weak var output: HelloSceneInteractorOutput?
}

extension HelloSceneInteractor: HelloSceneInteractorInput {

}
