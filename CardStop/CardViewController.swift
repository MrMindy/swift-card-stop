//
//  CardViewController.swift
//  CardStop
//
//  Created by Gustavo Nunes Pereira on 22/01/23.
//

import UIKit

class CardViewController: UIViewController {
    
    //An Outlet allow access into functions and data from it variable
    @IBOutlet var cardImage: UIImageView!
    
    @IBOutlet var stopButton: UIButton!
    @IBOutlet var restartButton: UIButton!
    @IBOutlet var rulesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        setButtonsRadius(
            buttons: [
                stopButton,
                restartButton,
                rulesButton
            ]
        );
        
    }
    
    //An action means that something will happen when (In this example) the user tap the button
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toRules", sender: nil);
        
    }
    
    func setButtonsRadius(buttons: [UIButton], radius: CGFloat = 8) {
        
        for button in buttons {
            button.layer.cornerRadius = radius;
        }
        
    }
}
