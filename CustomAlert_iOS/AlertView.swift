//
//  AlertView.swift
//  CustomAlert_iOS
//
//  Created by Noor Mohammed Anik on 1/8/21.
//

import Foundation

import UIKit

class AlertView: UIView {
    
    static let instance = AlertView()
    
    @IBOutlet var parrentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    
    @IBOutlet weak var doneBtn: UIButton!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        img.layer.cornerRadius = 30
        img.layer.borderColor = UIColor.white.cgColor
        img.layer.borderWidth = 2
        
        alertView.layer.cornerRadius = 10
        
        parrentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        parrentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    
    enum AlertType {
        case success
        case failure
    }
    func showAlert(title : String , message : String, alertType : AlertType ) {
        
        self.titleLbl.text = title
        self.messageLbl.text = message
        switch alertType {
        case .success:
            img.image = UIImage(named: "success")
            doneBtn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
         
        case .failure:
            img.image = UIImage(named: "failure")
            doneBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        }
        
        UIApplication.shared.keyWindow?.addSubview(parrentView)
    }
    
    
    @IBAction func onClickDone(_ sender: Any) {
        
        parrentView.removeFromSuperview()
        
    }
    
    
}
