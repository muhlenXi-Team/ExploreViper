//
//  HelloSceneHelloSceneProtocols.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - ModuleProtocol
/**
 *  methods for communication OuterSide -> HelloScene
 *  define the capabilities of HelloScene
 */
protocol HelloSceneModuleInput: class {

}

/**
 *  methods for communication HelloScene -> OuterSide
 *  tell the caller what is changed
 */
protocol HelloSceneModuleOutput: class {

}


// MARK: - SceneProtocol
/**
 *  methods for communication PRESENTER -> VIEW
 */
protocol HelloSceneViewInput: class {

}

/**
 *  methods for communication VIEW -> PRESENTER
 */
protocol HelloSceneViewOutput {

}

/**
 *  methods for communication PRESENTER -> INTERACTOR
 */
protocol HelloSceneInteractorInput {

}

/**
 *  methods for communication INTERACTOR -> PRESENTER
 */
protocol HelloSceneInteractorOutput: class {

}

