//
//  ViewController.swift
//  TestStackOverFlow
//
//  Created by Fernando on 12.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    let APIClient = StackAPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        view.backgroundColor = .white
        self.navigationItem.title = "Top Question"
        

        //Setup views
        
        let newView = NewHomeView()
        view.addSubview(newView)
//
        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.anchorSize(to: view)
        
        
        
//        APIClient.send(GetMostAsquedQuestions()) { (response) in
//
////            switch response {
////            case .success(let dataContainer):
////                print(dataContainer.items)
////            case .failure(let error):
////                print(error)
////            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


//
