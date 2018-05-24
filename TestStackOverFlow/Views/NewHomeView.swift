//
//  NewHomeView.swift
//  TestStackOverFlow
//
//  Created by Fernando on 15.05.18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import Foundation
import UIKit

public class NewHomeView: UIView {
    
    var scoreLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "1728"
        return label
    }()
    
    var questionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        return label
    }()
    
    let sepatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    var ownerLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        return label
    }()
    
    var ownerImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        return iv
    }()
    
    var ownerNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .gray
        return label
    }()
    
    var ownerReputationLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        return label
    }()
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    func setupViews() {
        addSubview(scoreLabel)
        addSubview(questionLabel)
        addSubview(sepatorView)
        addSubview(ownerLabel)
        addSubview(ownerImageView)
        addSubview(ownerNameLabel)
        addSubview(ownerReputationLabel)
        
        
        if let view = superview {
            
            let widthView = Int(view.frame.width / 4)
            
            scoreLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: widthView, height: 0))
            
            scoreLabel.heightAnchor.constraint(equalTo: scoreLabel.widthAnchor).isActive = true
            
            questionLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: scoreLabel.trailingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: scoreLabel.bottomAnchor, padding: .init(top: 14, left: 14, bottom: 0, right: 14))
            
            sepatorView.anchor(top: scoreLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 1))
            
            ownerLabel.anchor(top: sepatorView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: widthView, height: 0))
            
            ownerLabel.heightAnchor.constraint(equalTo: ownerLabel.widthAnchor).isActive = true
            
            ownerImageView.anchor(top: sepatorView.bottomAnchor, leading: ownerLabel.trailingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: widthView, height: 0))
            
            ownerImageView.heightAnchor.constraint(equalTo: ownerImageView.widthAnchor).isActive = true
            
            ownerNameLabel.anchor(top: sepatorView.bottomAnchor, leading: ownerImageView.trailingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: widthView/2))
            
            ownerReputationLabel.anchor(top: ownerNameLabel.bottomAnchor, leading: ownerImageView.trailingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: widthView/2))
            
            
            
        }
        else{
            print("The view has no superview.")
        }
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
