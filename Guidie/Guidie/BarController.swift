//
//  BarController.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 04/29/19.
//  Copyright © 2018 Guidie. All rights reserved.//

import UIKit

class BarController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 150
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(BarData.results.count)
        return BarData.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "barCell") as! BarCell
        
        let bar = BarData.results[indexPath.row]
        let name = "Name: \(bar["name"] as! String)"
        let rating = "Rating: \(bar["rating"] as! Double)"
        let price =  "Price: \(bar["price"] as! String)"
        let location = bar["location"] as! [String:Any]
        let address = "Location: \(location["address1"] as! String)"
        
        cell.businessName.text = name
        cell.businessRating.text = String(rating)
        cell.businessPrice.text = price
        cell.businessLocation.text = address
        let url = URL(string:bar["image_url"] as! String)!
        cell.coffeeImage.af_setImage(withURL: url)
        
        cell.backgroundColor = UIColor.lightGray

        
        return cell
        
    }
    
    
    
}
