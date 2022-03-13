//
//  ViewController.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 12.01.2022.
//

import UIKit

let startButton = UIButton()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Start"
        view.backgroundColor = .white
        startButton.setTitle("Start", for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.addAction(UIAction(handler: {[ weak self ] _ in
            self?.navigationController?.pushViewController(ForwardViewController(), animated: true)
    }), for: .touchUpInside)
        view.addSubview(startButton)
        }
    
    private func setupConstaints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    deinit {
        print("deinit")
    }
}
    extension ViewController {
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("ViewController")
        }
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("viewDidAppear")
    }
        override func viewWillDisappear(_ animated: Bool) {
                super.viewWillDisappear(animated)
                print("viewWillDisappear")
}

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("viewDidDisappear")
    }
}

