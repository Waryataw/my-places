//
//  NewPlaceViewController.swift
//  my-places
//
//  Created by Антон Варят on 22.10.2020.
//

import UIKit

class NewPlaceViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    // MARK: Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            tableView.endEditing(true)
        }
    }
    
}

// MARK: Text field delegate

extension NewPlaceViewController: UITextFieldDelegate{
    
    // Скрываем клавитару по нажатию на Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}
