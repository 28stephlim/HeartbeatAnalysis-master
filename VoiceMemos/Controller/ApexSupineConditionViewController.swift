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
    var details = String ()
    var diagnosis = String ()
//Target connections
    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labeldetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailscond()
// Do any additional setup after loading the view.
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
//  detailscond()
       labeldetails.text = details
       labelname.text = diagnosis
        
    }
    
    

    func detailscond() {
////referenced from mayoclinics
        if condition == "AS-MSC"{
                diagnosis = "Mitral Valve Prolapse"
            self.image.image = UIImage(named:"AS-MSC")
                details = "This is a non-life threatening disease. It is a lifelong disorder but many people with this condition rarely show symptoms. Symptoms occur usually only due to blood regurgitation."+"\n\n"+"Symptoms include:"+"\n"+"1. Racing or irregular heartbeat"+"\n"+"2. Dizziniess/lightheadedness"+"\n"+"3. Difficulty breathing/Shortness of breath when laying flat or during physical activity"+"\n"+"4. Fatigue"+"\n"+"5.Chest pain not caused by coronary artery disease"
                }
//referenced from mayoclinics
       else if condition == "AS-MSM"{
            self.image.image = UIImage(named:"AS-MSM")
            diagnosis = "Mitral Regurgitation due to Coronary Artery Disease"
            details = "Mitral regurgitation is defined as an abnormal reversal of blood flow from the left ventricle to the left atrium of the heart. It is caused by disruption in any part of the mitral valve."+"\n\n"+"When associcated with coronary artery disease, the following symptoms may be present:"+"\n"+"1. Dyspnea"+"\n"+"2. Fatigue"+"\n"+"3. Orthopnea"+"\n"+"4. Pulmonary edema (often the initial manifestation)"
                }
            
//referenced from http://emedicine.medscape.com/article/155618-overview
        else if condition == "AS-ESM"{
            self.image.image=UIImage(named:"AS-ESM")
            diagnosis = "Acute Mitral Regurgitation"
            details = "Mitral regurgitation is leakage of blood backward through the mitral valve each time the left ventricle contracts."+"\n"+" Acute mitral regurgitation is a severe case of mitral regurgitation. The increased pressure due to the severe regurgitation, the increased pressure may result in congestion or fluid build-up in the lungs. The heart may enlarge to maintain forward flow of blood, causing heart failure. In these cases, the symptoms are:"+"\n\n"+"1. Palpitations, especially when lying on the left side"+"\n"+"2. Shortness of breath during exertion"+"\n"+"3.Coughing"+"\n"+"4.Congestion around the heart and lungs"+"\n"+"5.Swelling of the legs and feet"
            }
            
//referenced from http://www.mayoclinic.org/diseases-conditions/mitral-valve-regurgitation/symptoms-causes/dxc-20121850
        else if condition == "AS-LSM"{
            self.image.image=UIImage(named:"AS-LSM")
            diagnosis = "Mitral Regurgitation due to Mitral Valve Prolapse"
            details = "In this condition, the leaflets and tendon-like cords supporting the mitral valve weaken and stretch so that with each contraction of the left ventricle, the valve leaflets bulge (prolapse) into the left atrium. This common heart defect can prevent the mitral valve from closing tightly and lead to regurgitation."+"\n\n"+"The symptoms of the mitral regurgitation due to mitral valve prolapse is like any other mitral regurgitation. The symptoms include:"+"\n"+"1. Blood flowing turbulently through your heart(heart murmur)"+"\n"+"2. Shortness of breath, especially with exertion or when you lie down"+"\n"+"3. Fatigue, especially during times of increased activity"+"\n"+"4. Heart palpitations — sensations of a rapid, fluttering heartbeat"+"\n"+"5.Swollen feet or ankles"
        }
         
//referenced from http://www.heart.org/HEARTORG/Conditions/CongenitalHeartDefects/AboutCongenitalHeartDefects/Ventricular-Septal-Defect-VSD_UCM_307041_Article.jsp#.V_c7EWVKCAY
        else if condition == "AS-HSM"{
            self.image.image=UIImage(named:"AS-HSM")
            diagnosis = "Classic Mitral Regurgitation"+"\n"+"Ventricular Septal Defect"
            details = "FOR CLASSIC MITRAL REGURGITATION"+"\n"+"This is a condition in which your heart's mitral valve doesn't close tightly, allowing blood to flow backward in your heart."+"\n"+"Symptoms are:"+"\n"+"1. Blood flowing turbulently through your heart(heart murmur)"+"\n"+"2. Shortness of breath, especially with exertion or when you lie down"+"\n"+"3. Fatigue, especially during times of increased activity"+"\n"+"4. Heart palpitations — sensations of a rapid, fluttering heartbeat"+"\n"+"5.Swollen feet or ankles"+"\n\n\n"+"FOR VENTRICULAR SEPTAL DEFECT(when heard along the left sternal border):"+"\n"+"A ventricular septal defect (VSD) is a defect in the septum between the right and left ventricle. The septum is a wall that separates the heart's left and right sides. Septal defects are sometimes called a hole in the heart. It's the most common congenital heart defect in the newborn; it's less common in older children and adults because some VSDs close on their own. "+"\n"+"The most common symptoms are:"+"\n"+"1. Shortness of breath"+"\n"+"2. Fast breathing"+"\n"+"3. Hard breathing"+"\n"+"4. Paleness"+"\n"+"5. Frequenct respiratory infection"
            }
            
        else if condition == "AS-SplitS1"{
                self.image.image=UIImage(named:"AS-SplitS1")
                diagnosis = "Normal"
                details = "This person has a normal heartsound. No heart issues found."
            }
            
        else if condition == "AS-Normal"{
            self.image.image=UIImage(named:"AS-Normal")
            diagnosis = "Normal"
            details = "This person has a normal heartsound. No heart issues found."
            }
        else{
            diagnosis = "This sound file is corrupted"
            details = "Error! Please re-record a new sound file."+"\n\n\n"+"Notice: Please ensure patient is not talking and breathing normally when heart sound is taken."
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
