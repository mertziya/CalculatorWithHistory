//
//  CalculatorViewController.swift
//  IBInspectibletryingtoinitialize
//
//  Created by Mert Ziya on 17.12.2024.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threebutton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eigthButton: UIButton!
    @IBOutlet weak var ninthButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtons()
    }

}




// MARK:- Bind buttons to
extension CalculatorViewController{
    
    private func setButtons(){
        zeroButton.addTarget(nil, action: #selector(tapped), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        threebutton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        seventhButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        eigthButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        ninthButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        
        resetButton.addTarget(self, action: #selector(initializeResultLabel), for: .touchUpInside)
        
        initializeResultLabel()
    }
    
    @objc private func tapped(_ sender: UIButton) {
        guard let title = sender.titleLabel?.text else {
            print("no title error bizzt")
            return
        }
        if resultLabel.text == "..." {
            self.resultLabel.textColor = UIColor.black
            self.resultLabel.text = ""
        } // If the result is nil.
        if resultLabel.text?.count ?? 0 < 10{
            resultLabel.text?.append(title)
        }
    }
    
    @objc private func initializeResultLabel(){
        self.resultLabel.textColor = UIColor.systemGray2.withAlphaComponent(0.4)
        self.resultLabel.text = "..."
        self.resultLabel.textAlignment = .right
    }
}
