//
//  LoginScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/3/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    private lazy var iPhoneSizeScaleFactor: CGFloat = {
       return self.view.frame.width / 375.0
    }()
    
    lazy private var mainTitleLabel: UILabel = {
        
        let width = self.view.frame.width
        let height: CGFloat = 50.0
        let xPos: CGFloat = 0.0
        let yPos: CGFloat = self.view.frame.height * 0.181
        
        let label = UILabel.init(frame: CGRectMake(xPos, yPos, width, height))
        label.text = "Reddak"
        label.font = UIFont.init(name: "HelveticaNeue-Thin", size: 60.0 * self.iPhoneSizeScaleFactor)
        label.textColor = UIColor.whiteColor()
        label.textAlignment = NSTextAlignment.Center
        
        return label
    }()
    
    lazy private var usernameInputField: IconUnderbarTextField = {
        
        let xPos: CGFloat = 0.0933 * self.view.frame.width
        let yPos: CGFloat = 0.354 * self.view.frame.height
        let width: CGFloat = self.view.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        let font = UIFont.init(name: "HelveticaNeue-Light", size: 18.0 * self.iPhoneSizeScaleFactor)!
        let fontColor = UIColor.init(white: 1.0, alpha: 0.80)
        let attributedPlaceholder = NSAttributedString.init(
            string: "Kerberos ID", attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: fontColor]
        )
        
       var inputField = IconUnderbarTextField.init(
            frame: CGRectMake(xPos, yPos, width, height), imageFileName: "UsernameLoginIcon",
            mainColor: RGBAColor.init(red: 255.0, green: 255.0, blue: 255.0, alpha: 0.40),
            attributedPlaceholder: attributedPlaceholder,
            imageIconFrame: CGRectMake(3.0, 9.0, 18.0, 24.0)
        )
        
        return inputField
        
    }()
    
    lazy private var passwordInputField: IconUnderbarTextField = {
        
        let xPos: CGFloat = 0.0933 * self.view.frame.width
        let yPos: CGFloat = 0.465 * self.view.frame.height
        let width: CGFloat = self.view.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        let font = UIFont.init(name: "HelveticaNeue-Light", size: 18.0 * self.iPhoneSizeScaleFactor)!
        let fontColor = UIColor.init(white: 1.0, alpha: 0.80)
        let attributedPlaceholder = NSAttributedString.init(
            string: "Password", attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: fontColor]
        )
        
        var inputField = IconUnderbarTextField.init(
            frame: CGRectMake(xPos, yPos, width, height), imageFileName: "PasswordLoginIcon",
            mainColor: RGBAColor.init(red: 255.0, green: 255.0, blue: 255.0, alpha: 0.40),
            attributedPlaceholder: attributedPlaceholder,
            imageIconFrame: CGRectMake(0.0, 7.0, 24.0, 28.0)
        )
        
        return inputField
        
    }()
    
    lazy private var registerButton: UIButton = {
        
        let xPos: CGFloat = 0.0933 * self.view.frame.width
        let yPos: CGFloat = 0.596 * self.view.frame.height
        let width: CGFloat = self.view.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        let attributedText =
            NSAttributedString.init(
                string: "Register Account",
                attributes: [
                    NSFontAttributeName: UIFont.init( name: "HelveticaNeue-Medium", size: 20.0 * self.iPhoneSizeScaleFactor)!,
                    NSForegroundColorAttributeName: UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 168.0/255.0, alpha: 1.0)
                ])
        
        let button = UIButton.init(frame: CGRectMake(xPos, yPos, width, height))
        button.setAttributedTitle(attributedText, forState: UIControlState.Normal)
        button.backgroundColor = UIColor.whiteColor()
        button.layer.cornerRadius = 5.0
        
        return button
        
    }()
    
    lazy private var signInButton: UIButton = {
        
        let xPos: CGFloat = 0.0933 * self.view.frame.width
        let yPos: CGFloat = 0.737 * self.view.frame.height
        let width: CGFloat = self.view.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        let attributedText =
            NSAttributedString.init(
                string: "Sign In",
                attributes: [
                    NSFontAttributeName: UIFont.init( name: "HelveticaNeue-Medium", size: 20.0 * self.iPhoneSizeScaleFactor)!,
                    NSForegroundColorAttributeName: UIColor.whiteColor()
                ])
        
        let button = UIButton.init(frame: CGRectMake(xPos, yPos, width, height))
        button.setAttributedTitle(attributedText, forState: UIControlState.Normal)
        button.backgroundColor = UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 168.0/255.0, alpha: 1.0)
        button.layer.cornerRadius = 5.0
        
        return button
        
    }()
    
    lazy private var orTextLabel: UILabel = {
        let xPos: CGFloat = 0
        let yPos: CGFloat = 0.691 * self.view.frame.height
        let width: CGFloat = self.view.frame.width
        let height: CGFloat = 18.0
        
        let label = UILabel.init(frame: CGRectMake(xPos, yPos, width, height))
        label.text = "or"
        label.font = UIFont.init(name: "HelveticaNeue-Light", size: 18.0 * self.iPhoneSizeScaleFactor)
        label.textColor = UIColor.init(white: 1.0, alpha: 0.40)
        label.textAlignment = NSTextAlignment.Center
        
        return label
    
    }()
    
    func setUpLayout() {
        // add views to background
        self.view.addSubview(self.mainTitleLabel)
        self.view.addSubview(self.usernameInputField)
        self.view.addSubview(self.passwordInputField)
        self.view.addSubview(self.registerButton)
        self.view.addSubview(self.orTextLabel)
        self.view.addSubview(self.signInButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 59.0/255, green: 47.0/255, blue: 99.0/255, alpha: 1.0)
        setUpLayout()
    }
}
