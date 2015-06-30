//: Playground - noun: a place where people can play

import AppKit
import PMS

//let label = UILabel(frame: CGRect(origin: CGPointZero, size: CGSize(width: 200, height: 200)))
let label = NSTextView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 100, height: 100)))
let string = "Hello PMS !"

let fgColorier = fgColor(NSColor.purpleColor())
let bgColorier = bgColor(NSColor.blackColor())

let stringTuner = fgColorier
    >>> bgColorier
    >>> fgColorier
    >>> font(NSFont.boldSystemFontOfSize(30))
    >>> fgColor(NSColor.orangeColor(), range: NSMakeRange(0, 1))
    >>> skew(0.3)

let attributedString = stringTuner(NSAttributedString(string: string))
label.insertText(attributedString)
