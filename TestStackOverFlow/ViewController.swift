//
//  ViewController.swift
//  TestStackOverFlow
//
//  Created by Fernando on 03.06.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let halfScreenViewLeft: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    let halfScreenViewRight: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(halfScreenViewLeft)
        view.addSubview(halfScreenViewRight)
        
        //Enable Autolayout
        halfScreenViewLeft.translatesAutoresizingMaskIntoConstraints = false
        
        //Place the top side of the view to the top of the screen
        halfScreenViewLeft.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        //Place the left side of the view to the left of the screen.
        halfScreenViewLeft.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        
        //Set the width of the view. The multiplier indicates that it should be half of the screen.
        halfScreenViewLeft.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        
        //Set the same height as the view´s height
        halfScreenViewLeft.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        //We do the same for the right view
        
        //Enable Autolayout
        halfScreenViewRight.translatesAutoresizingMaskIntoConstraints = false
        
        //Place the top side of the view to the top of the screen
        halfScreenViewRight.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        //The left position of the right view depends on the position of the right side of the left view
        
        halfScreenViewRight.leadingAnchor.constraint(equalTo: halfScreenViewLeft.trailingAnchor).isActive = true
        
        //Place the right side of the view to the right of the screen.
        halfScreenViewRight.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        //Set the same height as the view´s height
        halfScreenViewRight.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
    }
    
}
