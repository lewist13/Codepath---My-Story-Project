//
//  DetailViewController.swift
//  Codepath - My Story Project
//
//  Created by TaeVon Lewis on 2/23/23.
//

import UIKit

class DetailViewController: UIViewController {
    var context: Context?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let context = context {
                    self.title = context.title
                    contextDesc.text = context.description
                    contextImage.image = context.image
                }
    }
    
    @IBOutlet weak var contextImage: UIImageView!
    @IBOutlet weak var contextDesc: UILabel!
}
