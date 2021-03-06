//
//  ContentViewController.swift
//  Vizit
//
//  Created by Divyaraj Bakrola on 04/29/19.
//  Copyright © 2018 Guidie. All rights reserved.//

import UIKit

class ContentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    
    
    @IBOutlet weak var imageType: UIImageView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var navbarTitle = ""
    
    
    var allContents:[String] = []
    var allContentImages:[String] = []
    var cellBackGround:[UIColor] = []
    
    var identifiers:[String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 110
        allContents = ["COFFEE", "BAR", "WEATHER", "PLACES", "FOOD", "EVENTS"]
        allContentImages = ["icons8-coffee-50", "icons8-bar-50", "icons8-sun-50", "icons8-tripadvisor-50", "icons8-food-50", "icons8-calendar-50"]
        cellBackGround = [UIColor.cyan, UIColor.brown, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.red]
        imageType.image = UIImage(named:"sf")
        self.title = navbarTitle
        identifiers = ["coffee", "bars", "weather", "places", "food", "events"]
        
        
        
        
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allContents.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "contentCell") as! ContentCell
        
        cell.backgroundColor = cellBackGround[indexPath.row]
        
        cell.contentType.text = allContents[indexPath.row]
        
        cell.contentImage.image = UIImage(named:allContentImages[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let id = self.identifiers[indexPath.row]
        
        self.performSegue(withIdentifier:id , sender: nil)
    }
    

}
