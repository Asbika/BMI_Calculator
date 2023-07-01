//
//  ResultViewController.swift
//  IMC
//
//  Created by Asbika Hicham on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var firstLab: UILabel!
    var imc : val?
    //var imc : IMC2?
    override func viewDidLoad() {
        super.viewDidLoad()

        firstLab.text = imc?.valExp
        resultLabel.text = String(format: "%.2f",imc!.valeur)
        view.backgroundColor=imc?.valCol
    }
    //dismiss()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
