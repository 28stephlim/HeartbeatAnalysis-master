//
//  ConditionViewController.swift
//  VoiceMemos
//
//  Created by Arnold Yong Cheng Yee on 30/09/2016.
//  Copyright © 2016 Zhouqi Mo. All rights reserved.
//

import UIKit

class ConditionViewController: UIViewController {

    
    @IBOutlet weak var namecond: UILabel!
  
    var highname = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        namecond.text = highname
        
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
