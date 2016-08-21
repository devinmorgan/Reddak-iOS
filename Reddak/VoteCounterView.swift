//
//  VoteCounterView.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class VoteCounterView: UIView {
    
    let upvoteButton: UIButton
    let voteCountLabel: UILabel
    let downvoteButton: UIButton
    
    init() {
        
        // size and positioning
        let standardWidth: CGFloat = 25
        let standardXPos: CGFloat = 0
        
        let initialYPos: CGFloat = 0
        let buttonHeight: CGFloat = 25
        let labelHeight: CGFloat = 15
        
        // upvote button
        let upvoteImage = UIImage.init(named: "UpvoteIcon")
        self.upvoteButton = UIButton.init(frame: CGRectMake(standardXPos, initialYPos, standardWidth, buttonHeight))
        self.upvoteButton.setImage(upvoteImage, forState: UIControlState.Normal)
        self.addSubview(self.upvoteButton)
        
        // vote count label
        let defaultCountLabelText = "00"
        let textColor = UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 167.0/255.0, alpha: 1)
        let font = UIFont.systemFontOfSize(12.0)
        self.voteCountLabel = UILabel.init(frame: CGRectMake(standardXPos, initialYPos + buttonHeight, standardWidth, labelHeight))
        self.voteCountLabel.textColor = textColor
        self.voteCountLabel.font = font
        self.voteCountLabel.text = defaultCountLabelText
        self.addSubview(self.voteCountLabel)
        
        // downvote button
        let downvoteImage = UIImage.init(named: "DownvoteIcon")
        self.downvoteButton = UIButton.init(frame: CGRectMake(standardXPos, initialYPos + buttonHeight + labelHeight, standardWidth, buttonHeight))
        self.downvoteButton.setImage(downvoteImage, forState: UIControlState.Normal)
        self.addSubview(self.downvoteButton)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
