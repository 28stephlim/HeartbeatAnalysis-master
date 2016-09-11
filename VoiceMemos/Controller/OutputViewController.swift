//
//  OutputViewController.swift
//  VoiceMemos
//
//  Created by Jordan O'Callaghan on 10/09/2016.
//  Copyright © 2016 Zhouqi Mo. All rights reserved.
//

import UIKit


class OutputViewController: UIViewController {

    var inputURL: NSURL!
    var supine = ["Apex Supine Early Sys Mur", "Apex Supine Holo Sys Mur", "Apex Supine Late Sys Mur", "Apex Supine Mid Sys Click", "Apex Supine Mid Sys Mur", "Apex Supine Single S1 S2", "Apex Supine Split S1"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        compareHeartbeat()
    }
    
    
    func compareHeartbeat(){
        
        
        let alertController = UIAlertController(title: "Select Measurement Type", message: "Press one of these buttons", preferredStyle: .Alert)
        //We add buttons to the alert controller by creating UIAlertActions:
        
        let actionSupine = UIAlertAction(title: "Apex Supine",
                                         style: .Default)
        {(alertController: UIAlertAction!)->Void in
            
            self.signalCompare(self.supine)
            
        }
        
        
        alertController.addAction(actionSupine)
        
        let actionDucubitus = UIAlertAction(title: "Apex Left Ducubitus",
                                            style: .Default)
        {(alertController: UIAlertAction!)->Void in
            
            self.signalCompare(self.supine)
        }
        
        alertController.addAction(actionDucubitus)
        
        let actionAortic = UIAlertAction(title: "Aortic",
                                         style: .Default)
        {(alertController: UIAlertAction!)->Void in
            
            self.signalCompare(self.supine)
        }
        
        alertController.addAction(actionAortic)
        
        let actionPulmonic = UIAlertAction(title: "Pulmonic",
                                           style: .Default)
        {(alertController: UIAlertAction!)->Void in
            
            self.signalCompare(self.supine)
        }
        
        alertController.addAction(actionPulmonic)
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
        
    }
    
    /*func function2RENAME (option: Int){
        var detective = LBAudioDetectiveNew()
        var bundle = NSBundle.mainBundle()
        
        var matchArray = [Float32]()
        
        
        
        //IMPLEMENT THE OTHER AREAS HERE
        var supine = ["Apex Supine Early Sys Mur", "Apex Supine Holo Sys Mur", "Apex Supine Late Sys Mur", "Apex Supine Mid Sys Click", "Apex Supine Mid Sys Mur", "Apex Supine Single S1 S2", "Apex Supine Split S1"]
        

        
        
        switch option {
        case 1:
            dispatch_async(dispatch_get_main_queue(), {() -> Void in
                
                (supine as NSArray).enumerateObjectsUsingBlock({(sequenceSupine: Any, idx: Int, stop: UnsafeMutablePointer<ObjCBool>) -> Void in
                    
                    if let str = sequenceSupine as? String {
                        
                        var sequenceURL = bundle.URLForResource(str, withExtension: "caf")!
                        
                        var match: Float32 = 0.0
                        LBAudioDetectiveCompareAudioURLs(detective, self.inputURL, sequenceURL, 0, &match)
                        print("Match =  \(match)")
                        matchArray.append(match)
                    }
                })
                
                var maxMatch = matchArray.maxElement()
                var maxLocation = matchArray.indexOf(maxMatch!)
                
                let diagnosisAlert = UIAlertController(title: "Diagnosis", message: "\(supine[maxLocation!])", preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "OK", style: .Default){(diagnosisAlert: UIAlertAction!)->Void in }
                diagnosisAlert.addAction(okButton)
                self.presentViewController(diagnosisAlert, animated: true, completion: nil)
                
                
            })
            
        case 2:
            print("Do Work") //DO STUFF
        case 3:
            print("Do Work") //DO STUFF
        case 4:
            print("Do Work") //DO STUFF
        default:
            print("Error occured") //Error message
        } */
        
        func signalCompare(type: [String]){
            
            var detective = LBAudioDetectiveNew()
            var bundle = NSBundle.mainBundle()
            var matchArray = [Float32]()
            
            
            dispatch_async(dispatch_get_main_queue(), {() -> Void in
                
                (type as NSArray).enumerateObjectsUsingBlock({(sequenceType: Any, idx: Int, stop: UnsafeMutablePointer<ObjCBool>) -> Void in
                    
                    if let str = sequenceType as? String {
                        
                        var sequenceURL = bundle.URLForResource(str, withExtension: "caf")!
                        
                        var match: Float32 = 0.0
                        LBAudioDetectiveCompareAudioURLs(detective, self.inputURL, sequenceURL, 0, &match)
                        print("Match =  \(match)")
                        matchArray.append(match)
                    }
                })
                
                var maxMatch = matchArray.maxElement()
                var maxLocation = matchArray.indexOf(maxMatch!)
                
                let diagnosisAlert = UIAlertController(title: "Diagnosis", message: "\(type[maxLocation!])", preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "OK", style: .Default){(diagnosisAlert: UIAlertAction!)->Void in }
                diagnosisAlert.addAction(okButton)
                self.presentViewController(diagnosisAlert, animated: true, completion: nil)
                
            })
        }
        /*
        
        dispatch_async(dispatch_get_main_queue(), {() -> Void in
         
            (supine as NSArray).enumerateObjectsUsingBlock({(sequenceSupine: Any, idx: Int, stop: UnsafeMutablePointer<ObjCBool>) -> Void in
                
                if let str = sequenceSupine as? String {
                    
                    var sequenceURL = bundle.URLForResource(str, withExtension: "caf")!
                    
                    var match: Float32 = 0.0
                    LBAudioDetectiveCompareAudioURLs(detective, inputURL, sequenceURL, 0, &match)
                    print("Match =  \(match)")
                    matchArray.append(match)
                }
            })
            
            var maxMatch = matchArray.maxElement()
            var maxLocation = matchArray.indexOf(maxMatch!)
            
            let diagnosisAlert = UIAlertController(title: "Diagnosis", message: "\(supine[maxLocation!])", preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default){(diagnosisAlert: UIAlertAction!)->Void in }
            diagnosisAlert.addAction(okButton)
            self.presentViewController(diagnosisAlert, animated: true, completion: nil)
            
            
            //print("This recording shows most correlation with \(supine[maxLocation!])")
            
            
        })
        */
    
}