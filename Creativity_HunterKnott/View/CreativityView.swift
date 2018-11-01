//
//  CreativityView.swift
//  Creativity_HunterKnott
//
//  Created by Knott, Hunter on 11/1/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit

public class CreativityView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        drawFruitBowl()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.cyan.setStroke()
        figure.lineWidth = 1.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawFruitBowl() -> Void
    {
        let orange = UIBezierPath()
        UIColor.orange.setFill()
        
        orange.addArc(withCenter: CGPoint(x: 50, y: 50),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        //orange.move(to: CGPoint(x: 50, y: 50))
        //orange.close()
        orange.fill()
    }
    

}
