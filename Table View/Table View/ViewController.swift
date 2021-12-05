//
//  ViewController.swift
//  Table View
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks: [String] = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]
    
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        
        if taskTextField.text?.isEmpty == false{
            tasks.append(taskTextField.text!)
            taskTextField.text = ""
            self.view.endEditing(true)
            tableView.reloadData()
        }
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }


}
