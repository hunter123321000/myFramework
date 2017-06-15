//
//  myBtn.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/14.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class myBtn: UIView {

    var view: UIView!
    var nibName: String = "myBtn"
    
    @IBOutlet weak var Btn: UIButton!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
//    public override func draw(_ rect: CGRect) {
//        let h = rect.height
//        let w = rect.width
//        let color:UIColor = UIColor.yellow
//        
//        let drect = CGRect(x: (w * 0.25),y: (h * 0.25),width: (w * 0.5),height: (h * 0.5))
//        let bpath:UIBezierPath = UIBezierPath(rect: drect)
//        
//        color.set()
//        bpath.stroke()
//    }
    
   
    
    //MARK:
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    //MARK:
    func loadViewFromNib() {
        self.view = UINib(nibName: nibName, bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)[0] as! UIView
        
        self.view.frame = bounds
        self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(self.view)
        
    }
    
    public func setCorner(cornerRadius:Int,_ width:Int, color:UIColor){
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.layer.borderWidth = CGFloat(cornerRadius)
        self.layer.borderColor = color.cgColor
    }
    
    @IBAction func btn_click(_ sender: Any) {
//        setCorner(cornerRadius: 30, 20, color: UIColor(red: 100.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0));
    }
}


