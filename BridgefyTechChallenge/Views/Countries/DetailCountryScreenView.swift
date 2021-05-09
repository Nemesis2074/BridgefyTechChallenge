//
//  DetailCountryScreenView.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class DetailCountryScreenView: UIView {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var capital: UILabel!
    
    @IBOutlet weak var regionCardView: UIView!
    @IBOutlet weak var map: UIImageView!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var populationCardView: UIView!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var phoneCode: UILabel!
    
    @IBOutlet weak var timeZonesCardView: UIView!
    @IBOutlet weak var timeZones: UILabel!
    
    @IBOutlet weak var currencyCardView: UIView!
    @IBOutlet weak var currency: UILabel!
    
    @IBOutlet weak var bordersCardView: UIView!
    @IBOutlet weak var bordersLabel: UILabel!
    @IBOutlet weak var bordersCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initComponents()
    }
    
    private func initComponents(){
        self.backgroundColor = Styles.Color.bgGeneral
        
        scrollView.contentInsetAdjustmentBehavior = .never
        
    }

}
