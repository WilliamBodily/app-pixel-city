//
//  PopViewController.swift
//  pixel-city
//
//  Created by William Bodily on 3/31/19.
//  Copyright © 2019 William Bodily. All rights reserved.
//

import UIKit

class PopViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var passedImage: UIImage!
    var passedImageTitle: String!

    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var imageTitleBackground: UIView!
    @IBOutlet weak var imageTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        imageTitle.text = passedImageTitle
        addDoubleTapGesture()
    }
    
    func initData(forImage image: UIImage, title: String) {
        self.passedImage = image
        self.passedImageTitle = title
    }
    
    func addDoubleTapGesture() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
