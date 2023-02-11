//
//  DetailViewController.swift
//  tableViewDatapassingAndDeletingCell
//
//  Created by Mac on 07/02/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var myImgView: UIImageView!
    
    var strLabelOne:String?
    var img: Any?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelOne.text = strLabelOne
        myImgView.image = img as! UIImage
    }
    

   

}
