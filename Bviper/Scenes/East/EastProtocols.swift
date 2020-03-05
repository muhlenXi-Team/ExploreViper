//
//  EastEastProtocols.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - ModuleProtocol
/**
 *  methods for communication OuterSide -> East
 *  define the capabilities of East
 */
protocol EastModuleInput: class {

}

/**
 *  methods for communication East -> OuterSide
 *  tell the caller what is changed
 */
protocol EastModuleOutput: class {

}


// MARK: - SceneProtocol
/**
 *  methods for communication PRESENTER -> VIEW
 */
protocol EastViewInput: class {

}

/**
 *  methods for communication VIEW -> PRESENTER
 */
protocol EastViewOutput {

}

/**
 *  methods for communication PRESENTER -> INTERACTOR
 */
protocol EastInteractorInput {

}

/**
 *  methods for communication INTERACTOR -> PRESENTER
 */
protocol EastInteractorOutput: class {

}

