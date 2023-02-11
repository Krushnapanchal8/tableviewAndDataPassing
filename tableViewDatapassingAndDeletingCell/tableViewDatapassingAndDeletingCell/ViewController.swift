//
//  ViewController.swift
//  tableViewDatapassingAndDeletingCell
//
//  Created by Mac on 07/02/23.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var myTableView: UITableView!
    
    var array1: [String] = ["cricket","football","games","hockey","kabbadi","team","tropy","animation"]
    
    var imageArray = [UIImage(named: "cricket.jpeg"),UIImage(named: "football.jpeg"),
                    UIImage(named: "games.jpeg"),UIImage(named: "hockey.jpeg"),UIImage(named: "kabbadi.jpeg"),UIImage(named: "team.jpeg"),UIImage(named: "tropy.jpeg"),
                      UIImage(named: "animation.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell") as! MyTableViewCell
        cell.labelOne.text = array1[indexPath.row]
        cell.myImageView.image = imageArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(vc, animated: true)
        vc.strLabelOne = array1[indexPath.row]
        vc.img = imageArray[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array1.remove(at: indexPath.row)
            imageArray.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

