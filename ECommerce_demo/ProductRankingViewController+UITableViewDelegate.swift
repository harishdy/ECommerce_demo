//
//  ProductRankingViewController+UITableViewDelegate.swift
//  ECommerce_demo
//
//  Created by Harish yadav on 1/5/19.
//  Copyright © 2019 Arora Engineers. All rights reserved.
//

import UIKit

extension ProductRankingViewController : UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtter_Value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "identifier")else{return UITableViewCell()}
            cell.textLabel?.text = filtter_Value[indexPath.row].name
            cell.detailTextLabel?.text = filtter_Value[indexPath.row].view_count
            return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
}
