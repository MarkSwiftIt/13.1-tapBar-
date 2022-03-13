//
//  Forward.swift
//  13(TabBar)
//
//  Created by Mark Goncharov on 12.01.2022.
//

import UIKit

let forwardButton = UIButton()

class ForwardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        setupViews()
        setupConstaints()
    }
    private func setupViews() {
        title = "Forward"
        view.backgroundColor = .white
        forwardButton.setTitle("Forward", for: .normal)
        forwardButton.setTitleColor(.black, for: .normal)
        forwardButton.addAction(UIAction(handler: {[ weak self ] _ in
            self?.navigationController?.pushViewController(FinishedViewController(), animated: true)
    }), for: .touchUpInside)
        view.addSubview(forwardButton)
        }
    
    private func setupConstaints() {
        forwardButton.translatesAutoresizingMaskIntoConstraints = false
        forwardButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        forwardButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    deinit {
        print("deinit")
    }
}
    extension ForwardViewController {
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

