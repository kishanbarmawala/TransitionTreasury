//
//  FirstViewController.swift
//  Example
//
//  Created by DianQK on 16/3/24.
//  Copyright © 2016年 com.transitiontreasury. All rights reserved.
//

import UIKit
import TransitionTreasury
import TransitionAnimation

class FirstViewController: UIViewController, ModalTransitionDelegate {
    
    var tr_presentTransition: TRViewControllerTransitionDelegate?

    @IBAction func pushClick(_ sender: UIButton) {
        let second = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.tr_pushViewController(second, method: TRPushTransitionMethod.page)
    }
    
    
    @IBAction func presentClick(_ sender: UIButton) {
        let model = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        model.modalDelegate = self
        tr_presentViewController(model, method: TRPresentTransitionMethod.twitter)
    }
    
    func modalViewControllerDismiss(callbackData data: Any?) {
        tr_dismissViewController()
    }

}
