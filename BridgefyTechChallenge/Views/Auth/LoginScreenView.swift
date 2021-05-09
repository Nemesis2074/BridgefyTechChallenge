//
//  LoginScreenView.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class LoginScreenView: UIView {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: PrimaryButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initComponents()
    }
    
    private func initComponents(){
        self.backgroundColor = Styles.Color.bgGeneral
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
