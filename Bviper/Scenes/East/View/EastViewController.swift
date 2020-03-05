//
//  EastViewController.swift
//  Bviper.xcodeproj
//
//  Created by xiyinjun on 05/03/2020.
//  Copyright © 2020 BaiLun. All rights reserved.
//

import UIKit

class EastViewController: UIViewController {
    var output: EastViewOutput!
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .white
        table.tableFooterView = UIView()
        table.estimatedRowHeight = 0
        table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionFooterHeight = 0
        table.dataSource = self
        table.delegate = self
        table.rowHeight = 50.0
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSubViews()
    }
}


// MARK: - Assistant
extension EastViewController {
    func setupSubViews() {
        self.view.backgroundColor = UIColor.white
        tableView.frame = UIScreen.main.bounds
        self.setupEvents()
        self.view.addSubview(tableView)
    }
}

// MARK: UITableViewDataSource / UITableViewDelegate
extension EastViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let title = "\(indexPath.row + 1) - " + titles[indexPath.row]
        cell.textLabel?.text = title
        cell.textLabel?.textColor = UIColor(red: 51/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1.0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performEventsWith(title: titles[indexPath.row])
    }
}

// MARK: - EastViewInput 
extension EastViewController: EastViewInput {

}


// MARK: - EastModuleBuilder
 class EastModuleBuilder {
   
    class func setupModule(handler: EastModuleOutput? = nil) ->  (UIViewController, EastModuleInput) {
        let viewController = EastViewController()
        
        let presenter = EastPresenter()
        presenter.view = viewController
        presenter.transitionHandler = viewController
        presenter.outer = handler
        viewController.output = presenter
       
        let interactor = EastInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        let input = presenter
        
        return (viewController, input)
    }
    
}
