//
//  NorthNorthProtocols.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - ModuleProtocol
/**
 *  methods for communication OuterSide -> North
 *  define the capabilities of North
 */
protocol NorthModuleInput: class {

}

/**
 *  methods for communication North -> OuterSide
 *  tell the caller what is changed
 */
protocol NorthModuleOutput: class {

}


// MARK: - SceneProtocol
/**
 *  methods for communication PRESENTER -> VIEW
 */
protocol NorthViewInput: class {

}

/**
 *  methods for communication VIEW -> PRESENTER
 */
protocol NorthViewOutput {

}

/**
 *  methods for communication PRESENTER -> INTERACTOR
 */
protocol NorthInteractorInput {

}

/**
 *  methods for communication INTERACTOR -> PRESENTER
 */
protocol NorthInteractorOutput: class {

}

