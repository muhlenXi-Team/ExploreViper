//
//  WestWestProtocols.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

// MARK: - ModuleProtocol
/**
 *  methods for communication OuterSide -> West
 *  define the capabilities of West
 */
protocol WestModuleInput: class {

}

/**
 *  methods for communication West -> OuterSide
 *  tell the caller what is changed
 */
protocol WestModuleOutput: class {

}


// MARK: - SceneProtocol
/**
 *  methods for communication PRESENTER -> VIEW
 */
protocol WestViewInput: class {

}

/**
 *  methods for communication VIEW -> PRESENTER
 */
protocol WestViewOutput {

}

/**
 *  methods for communication PRESENTER -> INTERACTOR
 */
protocol WestInteractorInput {

}

/**
 *  methods for communication INTERACTOR -> PRESENTER
 */
protocol WestInteractorOutput: class {

}

