//
//  ArticleListCoordinator.swift
//  MVVMCBeta2
//
//  Created by Vansa Pha on 4/23/18.
//  Copyright © 2018 Vansa Pha. All rights reserved.
//

import UIKit

protocol ArticleListCoordinatorDelegate: class {
    func articleListCoordinatorDidFinish(articleListCoordinator: ArticleListCoordinator)
}

class ArticleListCoordinator: Coordinator {
    
    weak var delegate: ArticleListCoordinatorDelegate?
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let articleListViewController = ViewController()
        let viewModel = ArticleListViewModel()
        viewModel.model = ArticleListModel()
        articleListViewController.viewModel = viewModel
        window.rootViewController = articleListViewController
    }
}
