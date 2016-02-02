//
//  SecondViewController.swift
//  MovieViewer
//
//  Created by Suraj Sinha on 1/16/16.
//  Copyright © 2016 KingSoy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let totalColors: Int = 100
    func colorForIndexPath(indexPath: NSIndexPath) -> UIColor {
        if indexPath.row >= totalColors {
            return UIColor.blackColor() //return black if we get an unexpected row index
        }
        var hueValue: CGFloat = CGFloat(indexPath.row)/CGFloat(totalColors)
        return UIColor(hue: hueValue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        
       
        super.viewDidLoad()
       //  collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
