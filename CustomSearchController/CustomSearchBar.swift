//
//  CustomSearchBar.swift
//  CustomSearchController
//
//  Created by Julien Hoachuck on 8/20/15.
//  Copyright (c) 2015 Pandodroid. All rights reserved.
//
import Foundation
import UIKit

class CustomSearchBar: UISearchBar {
    
    init(){
    super.init(frame: CGRectZero)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setShowsCancelButton(showsCancelButton: Bool, animated: Bool) {
        // Void
    }

}