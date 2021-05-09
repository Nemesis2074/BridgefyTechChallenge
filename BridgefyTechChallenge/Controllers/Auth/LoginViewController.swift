//
//  LoginViewController.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var containerView: XibView!
    
    private var detailView: LoginScreenView{
        return containerView.contentView as! LoginScreenView
    }
    
    private lazy var keyboardController: KeyboardController = {
        return KeyboardController()
    }()
    
    private func initComponents(){
        
        detailView.loginButton.addTarget(self,
                                         action: #selector(login),
                                         for: .touchUpInside)
    }
    
    @IBAction func login(){
        AppDelegate.shared().showMainSection()
    }
    
    @IBAction func hideKeyboard(){
        self.view.endEditing(true)
    }
    
    private func configKeyboard(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        detailView.addGestureRecognizer(tapGesture)
        
        self.keyboardController.onKeyboardWillShow { (frame) in
            let insets = UIEdgeInsets(top: 0,left: 0,
                                      bottom: frame.height, right: 0)
            
        }
        
        self.keyboardController.onKeyboardWillHide {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponents()
        configKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        keyboardController.registerObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        keyboardController.unregisterObservers()
    }

}
