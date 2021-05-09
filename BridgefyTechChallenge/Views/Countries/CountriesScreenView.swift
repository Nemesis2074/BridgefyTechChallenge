//
//  CountriesScreenView.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class CountriesScreenView: UIView {

    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initComponents()
    }
    
    private func initComponents(){
        self.backgroundColor = Styles.Color.bgGeneral
        
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.backgroundView = nil
        tableView.backgroundColor = UIColor.clear
        
        tableView.register(cell: .Country)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
