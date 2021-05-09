//
//  UICollectionView+Utils.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import UIKit

extension UICollectionView{
    
    public enum CollectionCell:String{
        case Border = "BorderCell"
    }
    
    func register(cell:CollectionCell){
        let nib = UINib(nibName: cell.rawValue, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: cell.rawValue)
    }
    
    func dequeueReusableCell(_ cell:CollectionCell, for indexPath:IndexPath) -> UICollectionViewCell{
        return self.dequeueReusableCell(withReuseIdentifier: cell.rawValue,
                                        for: indexPath)
    }
    
}
