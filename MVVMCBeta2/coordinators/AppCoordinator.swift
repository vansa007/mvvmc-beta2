//
//  AppCoordinator.swift
//  MVVMCBeta2
//
//  Created by Vansa Pha on 4/23/18.
//  Copyright © 2018 Vansa Pha. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    
    fileprivate let ARTICLE_LIST: String = "ArticleList"
    
    var window: UIWindow
    var coordinators = [String: Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        self.gotoArticleList()
    }
    
    private func gotoArticleList() {
        let articleListCoordinator = ArticleListCoordinator(window: self.window)
        coordinators[ARTICLE_LIST] = articleListCoordinator
        articleListCoordinator.delegate = self
        articleListCoordinator.start()
    }
}

extension AppCoordinator: ArticleListCoordinatorDelegate {
    func articleListCoordinatorDidFinish(articleListCoordinator: ArticleListCoordinator) {
        
    }
}
