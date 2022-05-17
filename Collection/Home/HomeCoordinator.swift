//
//  HomeCoordinator.swift
//  Collection
//
//  Created by miff on 17.5.22..
//

import UIKit

protocol HomeCoordinationg {
    func start()
    func stop()
}

final class HomeCoordinator: HomeCoordinationg {
    private let presenter: UINavigationController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let viewModel = HomeViewModel(coordinator: self)
        let homeViewController = HomeViewController(viewModel: viewModel)
        presenter.pushViewController(homeViewController, animated: true)
    }
    
    func stop() { }
}
