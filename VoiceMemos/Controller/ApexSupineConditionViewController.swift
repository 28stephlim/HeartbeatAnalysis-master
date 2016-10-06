//
//  ApexSupineConditionViewController.swift
//  VoiceMemos
//
//  Created by Stephanie Lim on 04/10/2016.
//  Copyright © 2016 Zhouqi Mo. All rights reserved.
//

import UIKit

class ApexSupineConditionViewController: UIViewController {
    //Global variables
    var condition = String()
  
    //Target connections
    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labeldetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
       detailscond()
        
    }
    
    

    func detailscond() {
        if condition == "ApexSupineMSC"{
                labelname.text = "Mid Systolic Click"
            //self.image.image = UIImage(named:"ApexSupineMSC")
                labeldetails.text = " This is a non life threatening disease. It is a lifelong disorder but many people with this condition rarely show symptoms" + "Symptoms occur usually only due to blood regurgitation"+"\n\n"+"Symptoms include:"+"\n"+"1. Racing or irregular heartbeat"+"\n"+"2. Dizziniess/lightheadedness"+"\n"+"3. Difficulty breathing/Shortness of breath when laying flat or during physical activity"+"\n"+"4. Fatigue"+"\n"+"5.Chest pain not caused by coronary artery disease"
                }
        else if condition == "Mid-Systolic Murmur"{
            //self.image.image = UIImage(named:"--------")
            labelname.text = "Mid-Systolic Murmur"
            labeldetails.text = "1. Aortic Stenosis" + "\n" + "2. Pulmonic Stenosis" + "\n" + "3. Atrial Septal Defect"
                }
        else if condition == "Mid-Systolic Click"{
            //self.image.image=UIImage(named:"-----"
           
        }
        
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
