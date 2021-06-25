//
//  ViewController.swift
//  TableTest
//
//  Created by GSM04 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let numeng: [String] = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    let num: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    @IBOutlet var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.num.count
        case 1:
            return self.numeng.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text: String = indexPath.section == 0 ? self.numeng[indexPath.row] : self.num[indexPath.row]
        cell.textLabel?.text = text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}

