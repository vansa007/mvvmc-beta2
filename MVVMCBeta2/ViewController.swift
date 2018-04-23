//
//  ViewController.swift
//  MVVMCBeta2
//
//  Created by Vansa Pha on 4/23/18.
//  Copyright © 2018 Vansa Pha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ArticleListViewModelProtocol? {
        willSet {
            
        }
        didSet {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

