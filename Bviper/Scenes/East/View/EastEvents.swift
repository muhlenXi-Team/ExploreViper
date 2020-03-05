//
//  EastEvents.swift
//  Bviper
//
//  Created by muhlenXi on 2020/3/5.
//  Copyright © 2020 muhlenXi. All rights reserved.
//

import UIKit
import Alamofire

fileprivate var events: [String: Selector] = {
    let data = [String: Selector]()
    return data
}()

extension EastViewController {
    func setupEvents() {
        events["test 0"] = #selector(test0)
        events["test 1"] = #selector(test1)
    }
    
    @objc func test0() {
        AF.request("https://httpbin.org/get").response { (response) in
            print(response)
        }
    }
    
    @objc func test1() {
        print("test 1")
    }
}

extension EastViewController {
    var titles: [String] {
        return events.keys.map {$0}.sorted()
    }
    
    func performEventsWith(title: String) {
        if let sel = events[title] {
            perform(sel)
        }
    }
}
