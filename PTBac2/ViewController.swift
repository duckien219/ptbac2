//
//  ViewController.swift
//  PTBac2
//
//  Created by Kien Nguyen Duc on 5/15/17.
//  Copyright © 2017 Nik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtv_1: UITextField!
    @IBOutlet weak var txtv_2: UITextField!
    @IBOutlet weak var txtv_3: UITextField!
    
    
    @IBOutlet weak var lbl_x1: UILabel!
    @IBOutlet weak var lbl_x2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
    }

    @IBAction func btn_reset(_ sender: UIButton) {
        txtv_1.text = ""
        txtv_2.text = ""
        txtv_3.text = ""
        lbl_x1.text = ""
        lbl_x2.text = ""
}
    
    
    @IBAction func btn_kq(_ sender: UIButton) {
        
        
        if (txtv_1.text! == "" || txtv_2.text! == "" || txtv_3.text == "")
        {
        lbl_x1.text = " Chua nhap du cac he so!"
        }
        else {
            let a:Double = Double(txtv_1.text!)!
            let b:Double = Double(txtv_2.text!)!
            let c:Double = Double(txtv_3.text!)!

            if (a == 0) {
                if (b == 0) {
                    if (c == 0){
                        
                        lbl_x1.text = "Phuong trinh co nghiem bat ki"
                    }
                    else{
                        lbl_x1.text = " Phuong trinh vo nghiem"
                    }
                
            } else if (c == 0)
                {
                    lbl_x1.text = "0"
                }
                else {
                lbl_x1.text = "\(-c/b)!"
                }
            }
            else
            {
                let  delta = ((b*b) - (4*a*c))
                if (delta<0) {
                    lbl_x1.text = " Phuong trinh vo nghiem!"
                }
                else if (delta == 0) {
                lbl_x1.text = "\((-b)/(2*a))!"
                    
                } else {
                lbl_x1.text = "\((-b-sqrt(delta))/(2*a))"
                    lbl_x2.text = "\((-b+sqrt(delta))/(2*a))"

                }

                
            }
            
        
        
    }
   

    }
}

