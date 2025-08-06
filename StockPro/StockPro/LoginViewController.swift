//
//  LoginViewController.swift
//  StockPro
//
//  Created by WIZZARD on 17.7.25.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signoutButton: UIButton!
    @IBOutlet weak var indicatorView: UIView!
    
    var login: Bool = true
    let accentColor: UIColor = UIColor(red: 46, green: 164, blue: 219, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func signoutButtonPressed(_ sender: Any) {
        indicatorAnimation()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        indicatorAnimation()
    }
    
    func indicatorAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut]) {
            if self.login {
                self.indicatorView.frame.origin.x = self.signoutButton.frame.minX + 24
                self.loginButton.tintColor = .white
                self.signoutButton.tintColor = self.accentColor
                self.login = false
            } else {
                self.indicatorView.frame.origin.x = self.loginButton.frame.minX + 24
                self.signoutButton.tintColor = .white
                self.loginButton.tintColor = self.accentColor
                self.login = true
            }
        }
    }
}
