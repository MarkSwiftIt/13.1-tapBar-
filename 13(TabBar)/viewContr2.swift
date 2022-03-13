//
//  viewContr2.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 13.01.2022.
//


import UIKit

let startButton2 = UIButton()

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Start"
        view.backgroundColor = .white
        startButton2.setTitle("Start", for: .normal)
        startButton2.setTitleColor(.black, for: .normal)
        startButton2.addAction(UIAction(handler: {[ weak self ] _ in
            self?.navigationController?.pushViewController(ViewController2(), animated: true)
    }), for: .touchUpInside)
        view.addSubview(startButton2)
        }
    
    private func setupConstaints() {
        startButton2.translatesAutoresizingMaskIntoConstraints = false
        startButton2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    deinit {
        print("deinit")
    }
}
    extension ViewController2 {
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


