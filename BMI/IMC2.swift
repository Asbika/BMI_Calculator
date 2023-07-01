//
//  struct.swift
//  IMC
//
//  Created by Asbika Hicham on 4/3/23.
//
import UIKit
import Foundation

struct val {
    var taille : Float
    var poids : Float
    init(taille:Float, poids: Float) {
        self.taille = taille
        self.poids = poids
    }
    var IMCTab=["Poids normal","Surpoids","Obesite moderee","Obesite severe","Obesite massive","Donnees Incorrect"]
    var valeur : Float {
        get{
           return poids/pow(taille,2)
       }
    }
    var valCol: UIColor {
        get {
           
            switch valeur{
            
            case 18.5..<25:
                return #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
            case 25..<30:
                
                return #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            case 30..<35:
                return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            case 35..<40:
                return #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            case 40..<200:
                return #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            default:
                
                return  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
        
    }
    var valExp: String{
        get{
            switch valeur{
            
            case 18.5..<25:
                return IMCTab[0]
            case 25..<30:
                return IMCTab[1]
            case 30..<35:
                return IMCTab[2]
            case 35..<40:
                return IMCTab[3]
            case 40..<200:
                return IMCTab[4]
            default:
                
                return IMCTab[5]
            }
        }
    }
}


