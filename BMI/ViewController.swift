//
//  ViewController.swift
//  IMC
//
//  Created by Asbika Hicham on 4/2/23.
//

import UIKit

class ViewController: UIViewController {

    var tailleValue : Float = 0.0
    var poidsValue : Float = 0.0
    var IMCTab=["Poids normal","Surpoids","Obesite moderee","Obesite severe","Obesite massive"]
    @IBOutlet weak var tailleLabel: UILabel!
    @IBOutlet weak var poidsLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!
    @IBAction func tailleSlider(_ sender: UISlider) {
        tailleValue = round(sender.value * 100) / 100.0
        tailleLabel.text = "\(String(tailleValue))m"
        
    }
    @IBAction func poidsSlider(_ sender: UISlider) {
        poidsValue = round(sender.value * 100)/100.0;
        poidsLabel.text = "\(String(poidsValue))Kg"
    }
    @IBAction func calculateButton(_ sender: Any) {
        
        let val = round(calculateIMC() * 100) / 100.0
        resultLabel.text = "\(val)"
        switch val{
        case 18.5..<25:
            messageLabel.text = IMCTab[0]
            messageLabel.textColor=#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        case 25..<30:
            messageLabel.text = IMCTab[1]
            messageLabel.textColor=#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case 30..<35:
            messageLabel.text = IMCTab[2]
            messageLabel.textColor=#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        case 35..<40:
            messageLabel.text = IMCTab[3]
            messageLabel.textColor=#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        case 40..<200:
            messageLabel.text = IMCTab[4]
            messageLabel.textColor=#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        default:
            
            messageLabel.text = "Donnees Incorrect"
        }
    }
    
    func calculateIMC()->Float{
        
        return (poidsValue)/(tailleValue*tailleValue);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "seg"{
            let cs = segue.destination as! ResultViewController
            cs.imc=val(taille:tailleValue,poids:poidsValue)
        }
    }


}

