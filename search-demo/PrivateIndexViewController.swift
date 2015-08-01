//
//  FirstViewController.swift
//  search-demo
//
//  Created by Brian Clubb on 7/31/15.
//  Copyright © 2015 Bubblesort Laboratories LLC. All rights reserved.
//

import UIKit
import CoreSpotlight
import 

class PrivateIndexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupActivity()
        addToSpotlightIndex()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupActivity() {
        userActivity = NSUserActivity(activityType: "com.bubblesortlabs.search-demo.test")
        userActivity?.title = "Test Title"
        userActivity?.keywords = Set(["test","keyword"])
        userActivity?.userInfo = ["id":"test","category":"wordup"]
        userActivity?.eligibleForSearch = true
        userActivity?.becomeCurrent()
        print("New Activtity")
    }
    
    func addToSpotlightIndex(){
        
    }
    
    func searchAttributes(){
        var attributeSet = CSSearchableItemAttributeSet(kUTTypeImage)
        // Set properties that describe attributes of the item such as title, description, and image.
        attributeSet?.title = "Test Search Title"
        attributeSet?.contentDescription = "Test description"
    }
}