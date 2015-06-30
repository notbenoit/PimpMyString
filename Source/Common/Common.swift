//
// Copyright (c) 2015, Benoît Layer
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
// * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
// * The name of the author may not be used to endorse or promote 
// products derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL BENOIT LAYER BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

import Foundation

// Because I can't force anyone to use the 'Color' type, this us only used internally.
#if os(iOS)
    import UIKit
    typealias Color = UIColor
    typealias Font = UIFont
    #else
    import AppKit
    typealias Color = NSColor
    typealias Font = NSFont
#endif

public typealias StringTuner = NSAttributedString -> NSAttributedString

infix operator >>> { associativity left }
public func >>> (left: StringTuner, right: StringTuner) -> StringTuner {
    return { ats in
        return right(left(ats))
    }
}

// MARK: - Public Interface
/**
Use this function to apply multiple 
attributes to a range of text.

:param: style The paragraph style to apply.
:param: range An optional range where the attributes will be applied. No range means the whole string.

:returns: A StringTuner to apply the paragraph style to the text.
*/
public func pms_paragraphStyle(style: NSParagraphStyle, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSParagraphStyleAttributeName, style, range: range) }
}

/**
This function apply a skew to the text.

:param: skew  Skew to be applied.
:param: range An optional range where the attributes will be applied. No range means the whole string.

:returns: A StringTuner to apply a skew to the glyphs
*/
public func pms_skew(skew: Float, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSObliquenessAttributeName, skew, range: range) }
}

/**
Changes the baseline by offsetting it by the amount given in parameter

:param: offset By how much the baseline should be offset.
:param: range  An optional range where the attributes will be applied. No range means the whole string.

:returns: A StringTuner to apply an offset to the baseline
*/
public func pms_baselineOffset(offset: Float, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSBaselineOffsetAttributeName, offset, range: range) }
}

/**
Applies an special effect to the letters.

:param: range An optional range where the attributes will be applied. No range means the whole string.

:returns: A StringTuner to apply the letterpress effect.
*/
public func pms_effectLetterPress(range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSTextEffectAttributeName, NSTextEffectLetterpressStyle, range: range) }
}

// MARK: - Implementation
internal func font(font: Font, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSFontAttributeName, font, range: range) }
}

internal func fgColor(color: Color, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSForegroundColorAttributeName, color, range: range) }
}

internal func bgColor(color: Color, range: NSRange? = nil) -> StringTuner {
    return { ats in return addAttribute(ats, NSBackgroundColorAttributeName, color, range: range) }
}

internal func stroke(color: Color, width: Float, range: NSRange? = nil) -> StringTuner {
    return {
        ats in
        var ret = addAttribute(ats, NSStrokeColorAttributeName, color, range: range)
        ret = addAttribute(ret, NSStrokeWidthAttributeName, width, range: range)
        return ret
    }
}

internal func addAttribute(ats: NSAttributedString, attr: String, value: AnyObject, range: NSRange? = nil) -> NSAttributedString {
    let mAts = ats.mutableCopy() as! NSMutableAttributedString
    let styleRange = range ?? NSMakeRange(0, ats.length)
    mAts.addAttribute(attr, value: value, range: styleRange)
    return mAts.copy() as! NSAttributedString
}
