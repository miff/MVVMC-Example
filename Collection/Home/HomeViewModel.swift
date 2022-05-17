//
//  HomeViewModel.swift
//  Collection
//
//  Created by miff on 17.5.22..
//

import Foundation

protocol HomeViewModeling {
    func numberOfRows() -> Int
}

final class HomeViewModel: HomeViewModeling {
    private var coordinator: HomeCoordinationg?
    
    init(coordinator: HomeCoordinationg?) {
        self.coordinator = coordinator
    }
    
    func numberOfRows() -> Int {
        10
    }
}
