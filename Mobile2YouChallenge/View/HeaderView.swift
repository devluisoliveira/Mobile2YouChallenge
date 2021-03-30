//
//  HeaderView.swift
//  Mobile2YouChallenge
//
//  Created by DevLuis on 29/03/21.
//

import UIKit

protocol HeaderViewDelegate: class {
    func handleDismissal()
}

class HeaderView: UICollectionReusableView {
    //MARK: - Properties
    weak var delegate: HeaderViewDelegate?
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(backButton)
        backButton.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 42, paddingLeft: 16)
        backButton.setDimension(widht: 30, height: 30)
        return view
    }()
    
    private lazy var backButton: UIButton = {
        let buttom = UIButton(type: .system)
        buttom.setImage(#imageLiteral(resourceName: "baseline_arrow_back_white_24dp").withRenderingMode(.alwaysOriginal), for: .normal)
        buttom.addTarget(self, action: #selector(handleDismissal), for: .touchUpInside)
        return buttom
    }()
    
    var imageMovie: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .mobile2You
        iv.image = UIImage(named: "notimage")
        return iv
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageMovie)
        imageMovie.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        
        addSubview(containerView)
        containerView.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, height: 108)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Selectors
    @objc func handleDismissal() {
        delegate?.handleDismissal()
    }
}
