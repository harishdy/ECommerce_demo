//
//  ViewController.swift
//  ECommerce_demo
//
//  Created by Harish yadav on 1/5/19.
//  Copyright © 2019 Arora Engineers. All rights reserved.
//

import UIKit


class ViewController: UIViewController,ServiceLayerDeleagte {
    
    @IBOutlet weak var btn_SlideMenu: UIButton!
    @IBOutlet weak var tbl_Product: UITableView!
    @IBOutlet weak var tbl_MainTableView: UITableView!
    
   
    var valueHolder : Json4Swift_Base?
    override func viewDidLoad() {
        super.viewDidLoad()
        ServiceLayer.serviceLayer.delegate = self
        ServiceLayer.serviceLayer.getProductList()
        self.navigationItem.title = "Products"
    }
    func defaultMenuImage() -> UIImage {
        var defaultMenuImage = UIImage()
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 30, height: 22), false, 0.0)
        UIColor.black.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 3, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 10, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 17, width: 30, height: 1)).fill()
        UIColor.white.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 4, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 11,  width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 18, width: 30, height: 1)).fill()
        defaultMenuImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return defaultMenuImage;
    }
    func list(tempvalue: Json4Swift_Base) {
        print(tempvalue)
        self.valueHolder = tempvalue
        self.tbl_MainTableView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

