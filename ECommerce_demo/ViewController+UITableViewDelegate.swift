//
//  ViewController+UITableViewDelegate.swift
//  ECommerce_demo
//
//  Created by Harish yadav on 1/5/19.
//  Copyright © 2019 Arora Engineers. All rights reserved.
//

import UIKit
extension ViewController: UITableViewDelegate,UITableViewDataSource  {
    func numberOfSections(in tableView: UITableView) -> Int {
      return self.valueHolder?.categories.count ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.valueHolder?.categories[section].opened == true{
            if((valueHolder?.categories[section].products.count)! > 0){
                return (self.valueHolder?.categories[section].products.count)! + 1
            }else{
                return  (self.valueHolder?.categories[section].child_categories.count)! + 1
                
            }
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "identifier")else{return UITableViewCell()}
            cell.textLabel?.text = valueHolder?.categories[indexPath.section].name
            cell.accessoryType = .disclosureIndicator
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "identifier")else{return UITableViewCell()}
            if((valueHolder?.categories[indexPath.section].products.count)! > 0)
            {
                cell.textLabel?.text = "      " + (valueHolder?.categories[indexPath.section].products[indexPath.row - 1].name)!
            }else{
                cell.textLabel?.text = "       " +  (valueHolder?.categories[indexPath.section].child_categories[indexPath.row - 1])!
            }
            cell.accessoryType = .none
            return cell
        }
      
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if valueHolder?.categories[indexPath.section].opened == true{
            valueHolder?.categories[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            self.tbl_MainTableView.reloadSections(sections, with: .none)
        }else{
            valueHolder?.categories[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            self.tbl_MainTableView.reloadSections(sections, with: .none)
        }
    }
    
}
