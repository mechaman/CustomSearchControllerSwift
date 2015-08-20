//
//  CustomSearchController.swift
//  CustomSearchController
//
//  Created by Julien Hoachuck on 8/20/15.
//  Copyright (c) 2015 Pandodroid. All rights reserved.
//

import Foundation
import UIKit

class CustomSearchController: UISearchController, UISearchBarDelegate {

    lazy var customSearchBar: CustomSearchBar = {
        [unowned self] in
        let result = CustomSearchBar()
        result.delegate = self
        return result
        }()
    
    override var searchBar: UISearchBar {
        get {
            return customSearchBar
        }
    }
    
    init(searchViewController:UIViewController!) {
        super.init(searchResultsController: searchViewController)
        
        searchBar.delegate = self
    }
    

    
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        if(!searchBar.text.isEmpty)
        {
            self.active=true
        }
        else
        {
            self.active=false
        }
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }
    
    private override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

}


