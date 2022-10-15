//
//  ViewController.swift
//  LandmarkBook2
//
//  Created by omer beytut on 13.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewLabel: UITableView!
   
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableViewLabel.delegate = self
        tableViewLabel.dataSource = self
       
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Greatwall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)


    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
       // cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.images = landmarkImages[indexPath.row] görseller için sıralı göstermeye yarıyor.
       // content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
    
    
    
    
}

