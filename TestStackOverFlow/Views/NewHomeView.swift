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
        label.numberOfLines = 2
        label.text = "Score: 1720"
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
        label.text = "Forever and ever"
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
        label.text = "OwnerNameLabel"
        return label
    }()
    
    var ownerReputationTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .yellow
        return textField
    }()
    
    let sepatorViewFoot: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    let halfScreenView: UIView = {
       let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        addSubview(scoreLabel)
        addSubview(questionLabel)
        addSubview(sepatorView)
        addSubview(ownerLabel)
        addSubview(ownerImageView)
        addSubview(ownerNameLabel)
        addSubview(ownerReputationTextField)
        addSubview(sepatorViewFoot)
        addSubview(halfScreenView)
        
        
        let widthView = 50
        
        scoreLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: 0, height: 0))
        
        scoreLabel.heightAnchor.constraint(equalTo: scoreLabel.widthAnchor).isActive = true
        
        questionLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: scoreLabel.trailingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: scoreLabel.bottomAnchor, padding: .init(top: 14, left: 14, bottom: 0, right: 14))
        
        sepatorView.anchor(top: scoreLabel.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 1))
        
        ownerLabel.anchor(top: sepatorView.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: 0, height: 0))
        
        ownerLabel.heightAnchor.constraint(equalTo: ownerLabel.widthAnchor).isActive = true
        
        let rawPriority = UILayoutPriority.defaultLow.rawValue
        let labelPriority = UILayoutPriority(rawPriority + 1)
        
        ownerLabel.setContentHuggingPriority(labelPriority, for: .horizontal)
        
        ownerImageView.anchor(top: sepatorView.bottomAnchor, leading: ownerLabel.trailingAnchor, trailing: nil, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 0), size: .init(width: widthView, height: 0))
        
        ownerImageView.heightAnchor.constraint(equalTo: ownerImageView.widthAnchor).isActive = true
        
        ownerNameLabel.anchor(top: sepatorView.bottomAnchor, leading: ownerImageView.trailingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 0))

        
        ownerReputationTextField.anchor(top: ownerNameLabel.bottomAnchor, leading: ownerImageView.trailingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 0))
        
        sepatorViewFoot.anchor(top: ownerLabel.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 14, left: 14, bottom: 0, right: 14), size: .init(width: 0, height: 1))
        
        
        
        halfScreenView.translatesAutoresizingMaskIntoConstraints = false
        halfScreenView.topAnchor.constraint(equalTo: sepatorViewFoot.bottomAnchor).isActive = true
        halfScreenView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        halfScreenView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        halfScreenView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
