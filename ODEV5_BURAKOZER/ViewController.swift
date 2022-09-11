//
//  ViewController.swift
//  ODEV5_BURAKOZER
//
//  Created by Burak Özer on 1.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tfCalculatorWork: UILabel!
    
    @IBOutlet weak var tfCalculatorResult: UILabel!
    
    var workArea:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
      
    }
    
    func clearAll()
    {
        workArea = ""
        tfCalculatorWork.text = ""
        tfCalculatorResult.text = ""
    }


 
    @IBAction func acButton(_ sender: Any) {
        
        clearAll()
    }
    
    
    @IBAction func delButton(_ sender: Any) {
        
        if(!workArea.isEmpty)
        {
            workArea.removeLast()
            tfCalculatorWork.text = workArea
        }
    }
    
    
    
    @IBAction func plusButton(_ sender: Any) {
        
        addToWorkArea(value: "+")
    }
    
    
    @IBAction func equalsButton(_ sender: Any) {
        
        let expression = NSExpression(format: workArea)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        tfCalculatorResult.text = resultString
    }
    
    
    func formatResult(result:Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return  String(format: "%.0f", result)
        }
        
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    
    @IBAction func decimalButton(_ sender: Any) {
        
        addToWorkArea(value: ".")

    }
    
    
    
    @IBAction func zeroButton(_ sender: Any) {
        
        addToWorkArea(value: "0")

    }
    
    
    @IBAction func oneButton(_ sender: Any) {
        
        addToWorkArea(value: "1")

    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        
        addToWorkArea(value: "2")

    }
    
    
    @IBAction func threeButton(_ sender: Any) {
        
        addToWorkArea(value: "3")

    }
    
    
    @IBAction func fourButton(_ sender: Any) {
        
        addToWorkArea(value: "4")

    }
    
    
    
    @IBAction func fiveButton(_ sender: Any) {
        
        addToWorkArea(value: "5")

    }
    
    
    
    @IBAction func sixButton(_ sender: Any) {
        
        addToWorkArea(value: "6")

    }
    
    
    @IBAction func sevenButton(_ sender: Any) {
        
        addToWorkArea(value: "7")

    }
    
    
    @IBAction func eightButton(_ sender: Any) {
        
        addToWorkArea(value: "8")

    }
    
    
    
    @IBAction func nineButton(_ sender: Any) {
        
        addToWorkArea(value: "9")

    }
    
    
    func addToWorkArea(value: String)
    {
        workArea = workArea + value
        tfCalculatorWork.text = workArea
    }
    
    
    
    
}

