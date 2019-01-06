//
//  ProductRankingViewController.swift
//  ECommerce_demo
//
//  Created by Harish yadav on 1/5/19.
//  Copyright © 2019 Arora Engineers. All rights reserved.
//

import UIKit

class ProductRankingViewController: UIViewController,ServiceLayerDeleagte {
 var valueHolder : Json4Swift_Base?
    var selected_ProductValueHolder : Rankings?
    var filtter_Value = [Products]()
    @IBOutlet weak var tbl_Product: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ServiceLayer.serviceLayer.delegate = self
        ServiceLayer.serviceLayer.getProductList()
    }
    
    func list(tempvalue: Json4Swift_Base) {
        self.valueHolder = tempvalue
        filtter_Value.removeAll()
        selected_ProductValueHolder = valueHolder?.rankings[0]
        for i in (selected_ProductValueHolder?.products)!{
            for j in (valueHolder?.categories)!{
                let temp = j.products.filter({ $0.id == i.id
                })
                if(temp.count > 0)
                {
                    temp[0].view_count = "View Count :- " + i.view_count!
                    filtter_Value.append(temp[0])
                }
            }
            print(filtter_Value[0])
        }
        print((selected_ProductValueHolder?.products.count)!)
        tbl_Product.reloadData()
        
    }
   
    @IBAction func action_ChangeSection(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            print("Most View Product")
            filtter_Value.removeAll()
            selected_ProductValueHolder = valueHolder?.rankings[0]
            for i in (selected_ProductValueHolder?.products)!{
                for j in (valueHolder?.categories)!{
                        let temp = j.products.filter({ $0.id == i.id
                        })
                    if(temp.count > 0)
                    {
                        temp[0].view_count = "View Count :- " + i.view_count!
                        filtter_Value.append(temp[0])
                    }
                }
                print(filtter_Value[0])
            }
            print((selected_ProductValueHolder?.products.count)!)
            tbl_Product.reloadData()
            
        case 1:
            print("Most Ordered Product")
            filtter_Value.removeAll()
            selected_ProductValueHolder = valueHolder?.rankings[1]
            for i in (selected_ProductValueHolder?.products)!{
                for j in (valueHolder?.categories)!{
                    let temp = j.products.filter({ $0.id == i.id
                    })
                    if(temp.count > 0)
                    {
                        temp[0].view_count = "Ordered Count :- " + i.order_count!
                        filtter_Value.append(temp[0])
                    }
                }
                print(filtter_Value[0])
            }
            print((selected_ProductValueHolder?.products.count)!)
             tbl_Product.reloadData()
        case 2:
            print("Most Shared Product")
            filtter_Value.removeAll()
            selected_ProductValueHolder = valueHolder?.rankings[2]
            for i in (selected_ProductValueHolder?.products)!{
                for j in (valueHolder?.categories)!{
                    let temp = j.products.filter({ $0.id == i.id
                    })
                    if(temp.count > 0)
                    {
                        temp[0].view_count = "Shared Count :- " +  i.shares!
                        filtter_Value.append(temp[0])
                    }
                }
                print(filtter_Value.count)
            }
            print((selected_ProductValueHolder?.products.count)!)
             tbl_Product.reloadData()
        //show history view
        default:
            break;
        }
    }
    
}
