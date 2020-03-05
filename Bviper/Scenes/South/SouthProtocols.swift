//
//  SouthSouthProtocols.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - ModuleProtocol
/**
 *  methods for communication OuterSide -> South
 *  define the capabilities of South
 */
protocol SouthModuleInput: class {

}

/**
 *  methods for communication South -> OuterSide
 *  tell the caller what is changed
 */
protocol SouthModuleOutput: class {

}


// MARK: - SceneProtocol
/**
 *  methods for communication PRESENTER -> VIEW
 */
protocol SouthViewInput: class {

}

/**
 *  methods for communication VIEW -> PRESENTER
 */
protocol SouthViewOutput {

}

/**
 *  methods for communication PRESENTER -> INTERACTOR
 */
protocol SouthInteractorInput {

}

/**
 *  methods for communication INTERACTOR -> PRESENTER
 */
protocol SouthInteractorOutput: class {

}

