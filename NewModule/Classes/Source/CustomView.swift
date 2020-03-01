//
//  CustomView.swift
//  NewModule
//
//  Created by Marcello Chuahy on 29/02/20.
//

import UIKit

final class CustomView: UIView {
  
  // MARK: - Properties
  lazy var view001: UIView = { return UIView(frame: .zero) }()
  
  // MARK: - Initializers
  override init(frame: CGRect = .zero) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension Builder: ViewCodeProtocol {
  
  func buildViewHierarchy() {
    addSubview(view001)
  }
  
  func setupConstraints() {
    
    view001.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      view001.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
      view001.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
      view001.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
      view001.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
    ])
    
  }
  
  func setupAdditionalConfiguration() {
    view001.backgroundColor = .red
  }
  
}



