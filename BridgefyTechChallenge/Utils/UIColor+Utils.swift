//
//  UIColor+Utils.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import UIKit

extension UIColor{
    
    class func colorWith(R red:CGFloat, G green:CGFloat, B blue:CGFloat) -> UIColor{
        return UIColor.colorWith(R: red, G: green, B: blue, A: 1);
    }
    
    class func colorWith(R red:CGFloat, G green:CGFloat, B blue:CGFloat, A alpha:CGFloat) -> UIColor{
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha);
    }
}
