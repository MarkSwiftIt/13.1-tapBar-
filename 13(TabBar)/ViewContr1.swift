//
//  ViewContr1.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 13.01.2022.
//

import UIKit

let startButton1 = UIButton()

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Start"
        view.backgroundColor = .white
        startButton1.setTitle("Start", for: .normal)
        startButton1.setTitleColor(.black, for: .normal)
        startButton1.addAction(UIAction(handler: {[ weak self ] _ in
            self?.navigationController?.pushViewController(FinishedViewController1(), animated: true)
    }), for: .touchUpInside)
        view.addSubview(startButton1)
        }
    
    private func setupConstaints() {
        startButton1.translatesAutoresizingMaskIntoConstraints = false
        startButton1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    deinit {
        print("deinit")
    }
}
    extension ViewController1 {
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


