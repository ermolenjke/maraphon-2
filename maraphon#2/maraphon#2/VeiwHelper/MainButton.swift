//
//  MainButton.swift
//  maraphon#2
//
//  Created by Даниил Ермоленко on 05.05.2023.
//

import Foundation
import UIKit

final class MainButton: UIButton {
    
    init(textButton: String) {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        var config = UIButton.Configuration.filled()
        config.title = textButton
        config.cornerStyle = .dynamic
        config.image = UIImage(systemName: "lasso",
                               withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        config.imagePlacement = .trailing
        config.imagePadding = 8.0
        config.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                       leading: 14,
                                                       bottom: 10,
                                                       trailing: 14)
        configuration = config
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
