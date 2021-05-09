//
//  UITableView+Utils.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import UIKit

extension UITableView{
    
    public enum TableCell:String{
        case Country = "CountryCell"
    }
    
    func register(cell:TableCell){
        let nib = UINib(nibName: cell.rawValue, bundle: nil)
        self.register(nib, forCellReuseIdentifier: cell.rawValue)
    }
    
    func dequeueReusableCell(for cell: TableCell) -> UITableViewCell?{
        return self.dequeueReusableCell(withIdentifier: cell.rawValue)
    }
    
}
