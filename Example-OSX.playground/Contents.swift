//: Playground - noun: a place where people can play

import AppKit
import PMS

var label = NSTextView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 100, height: 100)))
let string = "Hello PMS !"

let fgColorier = pms_fgColor(NSColor.purpleColor())
let bgColorier = pms_bgColor(NSColor.blackColor())

let stringTuner = fgColorier
    >>> bgColorier
    >>> pms_font(NSFont.boldSystemFontOfSize(30))
    >>> pms_fgColor(NSColor.orangeColor(), range: NSMakeRange(0, 1))
    >>> pms_skew(0.3)

let attributedString = stringTuner(NSAttributedString(string: string))
label.insertText(attributedString, replacementRange: NSMakeRange(0, 0))
