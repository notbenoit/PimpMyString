//: Playground - noun: a place where people can play

import UIKit
import PMS

let label = UILabel(frame: CGRect(origin: CGPointZero, size: CGSize(width: 200, height: 200)))
let string = "Hello PMS !"

let underliner = pms_underline(UIColor.redColor(), style: NSUnderlineStyle.StyleDouble)
let fgColorier = pms_fgColor(UIColor.purpleColor())
let bgColorier = pms_bgColor(UIColor.blackColor())

let stringTuner = underliner
    >>> fgColorier
    >>> bgColorier
    >>> pms_font(UIFont.boldSystemFontOfSize(24))
    >>> pms_fgColor(UIColor.orangeColor(), range: NSMakeRange(0, 1))
    >>> pms_strikeThrough(UIColor.greenColor().colorWithAlphaComponent(0.5), style: NSUnderlineStyle.StyleSingle)
    >>> pms_skew(0.3)
    >>> pms_stroke(UIColor.brownColor(), width: 4)
    >>> pms_effectLetterPress()

let attributedString = stringTuner(NSAttributedString(string: string))
label.attributedText = attributedString
