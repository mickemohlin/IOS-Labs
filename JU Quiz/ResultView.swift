//
//  ResultView.swift
//  JU Quiz
//
//  Created by Mikael Mohlin on 2020-11-05.
//

import UIKit

class ResultView: UIView {
    
    private let titleLabel = UILabel()
    let resultLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        let imageView = UIImageView(image: UIImage(named: "background"))
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        titleLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        titleLabel.textColor = .white
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.text = NSLocalizedString("Your Results", comment: "Result Title")
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}

