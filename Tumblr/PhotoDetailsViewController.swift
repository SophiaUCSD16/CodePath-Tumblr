//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Jane on 2/9/17.
//  Copyright © 2017 Jane. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    // create container for photos
    var post: NSDictionary!
    
    @IBOutlet weak var detailImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if post != nil{
            if let photos = post.value(forKeyPath: "photos") as? [NSDictionary] {
                // photos is NOT nil, go ahead and access element 0 and run the code in the curly braces
                let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
                if let imageUrl = URL(string: imageUrlString!) {
                    // URL(string: imageUrlString!) is NOT nil, go ahead and unwrap it and assign it to imageUrl and run the code in the curly braces
                    detailImageView.setImageWith(imageUrl)
                } else {
                    // URL(string: imageUrlString!) is nil. Good thing we didn't try to unwrap it!
                }
            } else {
                // photos is nil. Good thing we didn't try to unwrap it!
            }

        
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
