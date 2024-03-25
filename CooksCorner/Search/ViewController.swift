//
//  SearchViewController.swift
//  CooksCorner
//
//  Created by Игорь Пачкин on 21/3/24.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    

    let contentView = SearchView()
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
}


