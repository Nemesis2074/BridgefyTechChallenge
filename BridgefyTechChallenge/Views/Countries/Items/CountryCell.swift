//
//  CountryCell.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class CountryCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var flag: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initComponents()
    }
    
    private func initComponents(){
        title.textColor = Styles.Color.textPrimary
        title.font = Styles.Font.mediumBold
        
        subtitle.textColor = Styles.Color.textSecondary
        subtitle.font = Styles.Font.medium
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
