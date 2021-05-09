//
//  UIStoryboard+Instances.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import UIKit

extension UIStoryboard{
    
    func instanceVC<T>() -> T{
        let identifier = String(describing: T.self)
        return instantiateViewController(withIdentifier: identifier) as! T
    }
    
    class func main() -> UIStoryboard{
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func auth() -> UIStoryboard{
        return UIStoryboard(name: "Auth", bundle: Bundle.main)
    }
    
}
