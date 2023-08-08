//
//  ViewController.swift
//  W3L2
//
//  Created by Hibah Abdullah Alatawi on 21/01/1445 AH.
//

import UIKit

class ViewController: UIViewController {
    
let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(navigationBar)
        view.backgroundColor = .white
        
        
        let titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.text = "Most Popular "
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        titleLabel.sizeToFit()
        titleLabel.frame = CGRect(x: -100, y: 150, width: view.frame.width, height: titleLabel.frame.height)
        
        
        view.addSubview(titleLabel)
      
        let rectWidth = (view.frame.width - 60) / 2
        let rectHeight: CGFloat = 60
        let rectSpacing: CGFloat = 20
        
        let labels = ["U.S Politics","Tech Compaies","TV& Movids","Reicpes","Travel","Celebs","Restaurants"]
        
        for i in 0..<labels.count {
            let xPosition = CGFloat(i % 2) * (rectWidth + rectSpacing) + 20
            let yPosition = CGFloat(i / 2) * (rectHeight + rectSpacing) + 200
            
            let rectangle = UIView(frame: CGRect(x: xPosition, y: yPosition, width: rectWidth, height: rectHeight))
            rectangle.backgroundColor = .gray.withAlphaComponent(0.3)
            rectangle.layer.cornerRadius = 10
            view.addSubview(rectangle)
            
            let label = UILabel(frame: CGRect(x: 10, y: 10, width: rectWidth - 20, height: 30))
            label.text = labels[i]
            label.textAlignment = .center
            rectangle.addSubview(label)
        }
        
    }
}
