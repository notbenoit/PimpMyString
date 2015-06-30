//: Playground - noun: a place where people can play

import UIKit
import PMS

let label = UILabel(frame: CGRect(origin: CGPointZero, size: CGSize(width: 200, height: 200)))
let string = "Hello PMS !"

let underliner = underline(UIColor.redColor(), NSUnderlineStyle.StyleDouble)
let fgColorier = fgColor(UIColor.purpleColor())
let bgColorier = bgColor(UIColor.blackColor())

let stringTuner = underliner
    >>> fgColorier
    >>> bgColorier
    >>> font(UIFont.boldSystemFontOfSize(24))
    >>> fgColor(UIColor.orangeColor(), range: NSMakeRange(0, 1))
    >>> strikeThrough(UIColor.greenColor().colorWithAlphaComponent(0.5), NSUnderlineStyle.StyleSingle)
    >>> skew(0.3)
    >>> stroke(UIColor.brownColor(), 4)
    >>> effectLetterPress()

let attributedString = stringTuner(NSAttributedString(string: string))
label.attributedText = attributedString
