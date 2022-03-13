//
//  Finishtd1.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 13.01.2022.
//


import UIKit


let finishedButton1 = UIButton()

class FinishedViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Finish"
        view.backgroundColor = .white
        finishedButton1.setTitle("Finish", for: .normal)
        finishedButton1.setTitleColor(.black, for: .normal)
        finishedButton1.addAction(UIAction(handler: {[ weak self ] _ in
            let alert = self?.createAlert() ?? UIAlertController()
            self?.present(alert, animated: true, completion: nil)
    }), for: .touchUpInside)
        view.addSubview(finishedButton1)
        }
    
    private func setupConstaints() {
        finishedButton1.translatesAutoresizingMaskIntoConstraints = false
        finishedButton1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        finishedButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func createAlert() -> UIAlertController {
        let alert = UIAlertController(title: "Finish",
            message: " You went to the last screen.",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .cancel, handler: nil))
        return alert
    }
}

