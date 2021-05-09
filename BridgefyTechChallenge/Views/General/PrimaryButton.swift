//
//  PrimaryButton.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

@IBDesignable
class PrimaryButton: UIButton {

    @IBInspectable public var title:String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initComponents()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        initComponents()
    }
    
    private func initComponents() {
        self.clipsToBounds = false
        self.titleLabel!.font = Styles.Font.medium
        self.backgroundColor = Styles.Color.textAccent
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(Styles.Color.textPrimaryLight, for: .normal)
        self.setTitleColor(Styles.Color.textPrimaryLight.withAlphaComponent(0.6), for: .highlighted)
        self.imageView!.tintColor = Styles.Color.textPrimaryLight
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: Styles.Margin.Margin2x)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = Styles.Constants.ShadowOffset
        self.layer.shadowRadius = Styles.Constants.ShadowRadius
        self.layer.shadowOpacity = Styles.Constants.ShadowOpacity
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = Styles.Constants.CornerRadius
    }

}
