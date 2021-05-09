//
//  KeyboardController.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class KeyboardController: NSObject {

    public typealias OnKeyboardWillShow = (CGRect) -> Void
    public typealias OnKeyboardWillHide = () -> Void
    
    private var willShowBlock:OnKeyboardWillShow?
    public func onKeyboardWillShow(_ willShowBlock:@escaping OnKeyboardWillShow){
        self.willShowBlock = willShowBlock
    }
    
    private var willHideBlock:OnKeyboardWillHide?
    public func onKeyboardWillHide(_ willHideBlock:@escaping OnKeyboardWillHide){
        self.willHideBlock = willHideBlock
    }
    
    public func registerObservers(){
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                               object: nil,
                                               queue: nil,
                                               using: keyboardWillShow)
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                               object: nil,
                                               queue: nil,
                                               using: keyboardWillHide)
    }
    
    public func unregisterObservers(){
        NotificationCenter.default.removeObserver(self)
    }
    
    private func keyboardWillShow(notification:Notification){
        if let userInfo:Dictionary = notification.userInfo{
            if let keyboardSize = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
                if let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double{
                    UIView.animate(withDuration: animationDuration, animations: {
                        if let block = self.willShowBlock{
                            block(keyboardSize)
                        }
                    })
                }
            }
        }
    }
    
    private func keyboardWillHide(notification:Notification){
        if let userInfo:Dictionary = notification.userInfo{
            if let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double{
                UIView.animate(withDuration: animationDuration, animations: {
                    if let block = self.willHideBlock{
                        block()
                    }
                })
            }
        }
    }
}

