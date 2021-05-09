//
//  CountriesController.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit
import SDWebImage

protocol CountriesDelegate: class {
    func countrySelected(_ country:Country, on controller: CountriesController)
}

class CountriesController: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    /*MARK: ++++++++++++++++++++ PROPIEDADES ++++++++++++++++++++*/
    
    private weak var tableView: UITableView!
    private weak var delegate: CountriesDelegate!
    
    private var countries: [Country] = []
    
    /*MARK: ++++++++++++++++++++ CONSTRUCTOR ++++++++++++++++++++*/
    
    init(with delegate: CountriesDelegate, tableView: UITableView){
        super.init()
        self.delegate = delegate
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.delaysContentTouches = false
    }
    
    /*MARK: ++++++++++++++++++++ METODOS ++++++++++++++++++++*/
    
    public func updateCountries(_ countries: [Country]){
        self.countries = countries
        reloadData()
    }
    
    public func reloadData(){
        self.tableView.reloadData()
    }
    
    /*MARK: ++++++++++++++++++++ EVENTOS ++++++++++++++++++++*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: .Country) as! CountryCell
    
        let country = countries[indexPath.row]
        
        cell.title.text = country.name
        cell.subtitle.text = country.codeFormatted
        
        cell.flag.sd_setImage(with: country.flagUrl, placeholderImage: nil)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.row]
        delegate.countrySelected(country, on: self)
    }
    
}
