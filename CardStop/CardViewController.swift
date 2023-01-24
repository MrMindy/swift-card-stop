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
    
    var timer: Timer!
    var cards: [UIImage]  = Deck.cards;
    var interval: CGFloat = 0.1;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        startTimer();
        
        setButtonsRadius(
            buttons: [
                stopButton,
                restartButton,
                rulesButton
            ]
        );
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(selectRandomImage), userInfo: nil, repeats: true);
    
    }
    
    @objc func selectRandomImage() {
        cardImage.image = cards.randomElement() ?? UIImage(named: "AS");
    }
    
    //An action means that something will happen when (In this example) the user tap the button
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate();
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate();
        startTimer();
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
