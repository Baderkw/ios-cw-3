//
//  ViewController.swift
//  Classwork3iOS
//
//  Created by Bodour Alrashidi on 6/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     // MARK: - يمكنك اضافه اللغات التي تريدها هنا
    var  helloLangauge = ["اهلا"," Hola "," Bonjour "," Konnichiwa "," Namaste ", "желанный ", "benvenuto"]
    var flagLanguage = [" 🇰🇼 "," 🇪🇸  "," 🇫🇷  "," 🇯🇵 "," 🇮🇳 ", "🇷🇺", "🇮🇹"]
     // MARK: - علي كل لغه جديد يجب ان تضيف خانه جديده داخل ال greetingArray
    var greetingArray : [String] = []
    
    
    @IBOutlet weak var NameTextfield: UITextField!
    @IBOutlet weak var Namelabel: UILabel!
    
    @IBAction func Pressbutton(_ sender: Any) {
        Namelabel.text = ""
        
        var name = NameTextfield.text!
        
        
        // MARK: -  قم باستدعاء الداله هنا
        
        addName(name: name, helloLanguage: helloLangauge, flagLanguage: flagLanguage)
        
        // MARK: -  النهايه⚠️⚠️لا تقم بغير تحت هذا السطر
        
        
        
       
        // MARK: -  تقوم ب عرض المصفوفه  و اضافه سطر جديد
        for index in 0..<(greetingArray.count)
        {
            
            Namelabel.text! += greetingArray[index] + "\n"
            
        }
        greetingArray = []
        NameTextfield.text = ""
    }
    
    
    
    // MARK: -  قم بكتابة الداله هنا
    
    func addName(name: String, helloLanguage: [String], flagLanguage: [String]) {
        
        var greetingMessage = ""
        for i in 0 ... (helloLanguage.count - 1) {
            greetingMessage = "\(helloLanguage[i]) \(name) \(flagLanguage[i])"
            greetingArray.append(greetingMessage)
        }
    }
    
    // MARK: -   النهايه⚠️⚠️ لا تقوم بغير تحت هذا السطر
    
    
 
    
    
}

