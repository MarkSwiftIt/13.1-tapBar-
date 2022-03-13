//
//  Finished.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 12.01.2022.
//
import UIKit


let finishedButton = UIButton()

class FinishedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Finish"
        view.backgroundColor = .white
        finishedButton.setTitle("Finish", for: .normal)
        finishedButton.setTitleColor(.black, for: .normal)
        finishedButton.addAction(UIAction(handler: {[ weak self ] _ in
            let alert = self?.createAlert() ?? UIAlertController()
            self?.present(alert, animated: true, completion: nil)
    }), for: .touchUpInside)
        view.addSubview(finishedButton)
        }
    
    private func setupConstaints() {
        finishedButton.translatesAutoresizingMaskIntoConstraints = false
        finishedButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        finishedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func createAlert() -> UIAlertController {
        let alert = UIAlertController(title: "Finish",
            message: " You went to the last screen.",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .cancel, handler: nil))
        return alert
    }
}

