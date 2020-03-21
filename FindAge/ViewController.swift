//
//  ViewController.swift
//  FindAge
//
//  Created by JOINKLU on 21/03/20.
//  Copyright © 2020 IrfanNawawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldBirthYear: UITextField!
    @IBOutlet weak var labelResultAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionFindAge(_ sender: Any) {
        // tes lakukan sesuatu
        print("Aww aku ter tap...")
        
        // dapatkan tahun lahir yang di inputkan
        guard let birthYear = textFieldBirthYear.text else {return}
        
        // pastikan nilai birthyear tidak kosong
        if birthYear != nil {
            
            // dapatkan tahun sekarang
            let date = Date()
            let calendar = Calendar.current
            let currentYear = calendar.component(.year, from: date)
            
            // convert string ke integer agar bisa dihitung
            guard let intBirthYear = Int(birthYear) else {return}
            
            // hitung umur
            let resultAge = currentYear - intBirthYear
            
            // set hasil hitung ke label
            labelResultAge.text = "Your age is \(resultAge) years old!"
        }
    }
}

