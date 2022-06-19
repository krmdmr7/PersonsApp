//
//  ViewController.swift
//  Persons App
//
//  Created by Kerem Demir on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var personsTableView: UITableView!
    
    var list = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        list = ["Kerem","Ahmet","Ece","Murat","Cem"]
        
        personsTableView.dataSource = self
        personsTableView.delegate = self
        
        searchBar.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            
        }
        if segue.identifier == "toUpdate" {
            
        }
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  "personCell", for: indexPath) as! PersonCellTableViewCell
        
        cell.personTextLabel.text = list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(list[indexPath.row]) seçildi.")
        
        self.performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (ContextualAction, view, boolValue) in
            print("\(self.list[indexPath.row]) deleted.")
    }
        
        let updateAction = UIContextualAction(style: .normal, title: "Update") { (ContextualAction, view, boolValue) in
            print("\(self.list[indexPath.row]) updated.")
            
            self.performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
        
        return UISwipeActionsConfiguration(actions: [deleteAction, updateAction])
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonuç : \(searchText)")
    }
    
}
