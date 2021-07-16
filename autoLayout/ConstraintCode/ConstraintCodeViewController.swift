//
//  ConstraintCodeViewController.swift
//  autoLayout
//
//  Created by Somsak Kaeworasan on 16/7/2564 BE.
//

import UIKit

class ConstraintCodeViewController: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let secondView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .red
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(myView)
        myView.addSubview(secondView)
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        //Append constraints.
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        constraints.append(secondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(secondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        constraints.append(secondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        constraints.append(secondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
//        constraints.append(secondView.leadingAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.leadingAnchor, constant: 100))
//        constraints.append(secondView.trailingAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.trailingAnchor, constant: -100))
//        constraints.append(secondView.bottomAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.bottomAnchor, constant: -100))
//        constraints.append(secondView.topAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.topAnchor, constant: 100))
        
        //Activate (Applying).
        NSLayoutConstraint.activate(constraints)
    }
}
