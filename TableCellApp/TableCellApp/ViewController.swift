//
//  ViewController.swift
//  TableCellApp
//
//  Created by Owner on 2020-03-30.
//  Copyright © 2020 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    
   let mainArray = ["Shuttle bus", "Hierarchy", "Exchange","Padlock"]
   let detailArray = ["6am - 10pm", "Acme corporation", "Ideas worth sharing", "Access denied"]
   let imageArray = ["bus.png", "bus.png", "bus.png", "bus.png"]
    
    let cellID = "cellID"
    

    @IBOutlet weak var tableData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData.delegate = self

        tableData.dataSource = self

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return mainArray.count
       }
    
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle,reuseIdentifier: cellID) }
        cell?.textLabel?.text = mainArray[indexPath.row]
        cell?.detailTextLabel?.text = detailArray[indexPath.row]
        cell?.imageView?.image = UIImage(named: imageArray [indexPath.row])
        return cell!
           
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = mainArray[indexPath.row]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
//Just dismiss the action sheet
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }

}


