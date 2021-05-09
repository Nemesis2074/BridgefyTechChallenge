//
//  CountriesViewController.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class CountriesViewController: UIViewController, CountriesDelegate {

    @IBOutlet weak var containerView: XibView!
    
    private var detailView: CountriesScreenView{
        return containerView.contentView as! CountriesScreenView
    }
    
    private lazy var listController: CountriesController = {
        return CountriesController(with: self,
                                   tableView: detailView.tableView)
    }()
    
    private func initComponents(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponents()
    }
    
    func countrySelected(_ country: Country, on controller: CountriesController) {
        
    }

}
