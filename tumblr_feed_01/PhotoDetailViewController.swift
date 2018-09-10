//
//  PhotoDetailViewController.swift
//  tumblr_feed_01
//
//  Created by paul on 9/9/18.
//  Copyright © 2018 PoHung Wang. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photoImage: UIImageView!
    
    var post: [String: Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post = post{
            if let photos = post["photos"] as? [[String: Any]] {
                // photos is NOT nil, we can use it!
                // TODO: Get the photo url
                // 1.
                let photo = photos[0]
                // 2.
                let originalSize = photo["original_size"] as! [String: Any]
                // 3.
                let urlString = originalSize["url"] as! String
                // 4.
                let url = URL(string: urlString)
                
                
                photoImage.af_setImage(withURL: url!)
                
                
                
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
