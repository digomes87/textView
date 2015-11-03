//
//  ViewController.swift
//  textView
//
//  Created by Diego Gomes on 03/11/2015.
//  Copyright (c) 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView.delegate = self
        
        textView.text = "Here my text and my web sites http://twitter.com/nylondev"
        textView.backgroundColor = UIColor.yellowColor()
        
        //user RGB colour
        textView.backgroundColor = UIColor(red: 39/255, green: 53/255, blue: 182/255, alpha: 1)
        
        //font color
        textView.font = UIFont.systemFontOfSize(20)
        textView.textColor = UIColor.whiteColor()
        
        //update font size
        textView.font = UIFont.boldSystemFontOfSize(20)
        textView.font = UIFont(name: "Verdana", size: 17)
        
        // make UItextView Editable
        textView.editable = false
        textView.selectable = true
        textView.dataDetectorTypes = UIDataDetectorTypes.Link
        
        // make UITextView corners rounded
        textView.layer.cornerRadius = 10
        
        //enable autocorrector in text
        textView.autocorrectionType = UITextAutocorrectionType.Yes
        textView.spellCheckingType = UITextSpellCheckingType.Yes
        
        
        let mygesture = UITapGestureRecognizer(target: self, action: "tappedAwayFunction:")
        self.view.addGestureRecognizer(mygesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool{
        println("cliked on \(URL.absoluteURL)")
        return true
    }

    func tappedAwayFunction(sender:UITapGestureRecognizer){
        textView.resignFirstResponder()
    }
    
    internal func textViewDidBeginEditing(textView: UITextView) {
        println("inside of textViewShouldBeginEditing")
    }
    
    internal func textViewDidEndEditing(textView: UITextView) {
        println("Inside of textViewDidEndEditing")
    }

}

