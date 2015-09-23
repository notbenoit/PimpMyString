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

import UIKit

/**
Use this function to change the font for a range of text.

- parameter font:  The font to apply.
- parameter range: An optional range where the font will be applied. No range means the whole string.

- returns: A StringTuner to tune the font.
*/
public func pms_font(fontP: UIFont, range: NSRange? = nil) -> StringTuner {
    return font(fontP, range: range)
}

/**
Use this function to specify the color of the text during rendering.

- parameter color: The color to apply to the text.
- parameter range: An optional range where the color will be applied. No range means the whole string.

- returns: A StringTuner to tune the text color.
*/
public func pms_fgColor(color: UIColor, range: NSRange? = nil) -> StringTuner {
    return fgColor(color, range: range)
}

/**
Use this function to specify the color of the background area behind the text.

- parameter color: The color to apply to the background.
- parameter range: An optional range where the background color will be applied. No range means the whole string.

- returns: A StringTuner to tune the background color.
*/
public func pms_bgColor(color: UIColor, range: NSRange? = nil) -> StringTuner {
    return bgColor(color, range: range)
}

/**
This function sets the underline color, and whether the text is
underlined and corresponds to one of the constants described
in “Underline and Strikethrough Style Attributes”.

- parameter color: The color to use when the text is underlined.
- parameter style: The style of the underline.
- parameter range: An optional range where the attributes will be applied. No range means the whole string.

- returns: A StringTuner to underline the text.
*/
public func pms_underline(color: UIColor, style: NSUnderlineStyle, range: NSRange? = nil) -> StringTuner {
    return underline(color, style: style, range: range)
}

/**
This function sets the color of the strike and whether the text
has a line through it and corresponds to one of the constants
described in “Underline and Strikethrough Style Attributes”.

- parameter color: The color to use when the text is striked.
- parameter style: The style of the strikethrough.
- parameter range: An optional range where the attributes will be applied. No range means the whole string.

- returns: A StringTuner to strike the text.
*/
public func pms_strikeThrough(color: UIColor, style: NSUnderlineStyle, range: NSRange? = nil) -> StringTuner {
    return strike(color, style: style, range: range)
}

/**
This functions sets the stroke color, and stroke width of
the text to draw.

- parameter color: The color of the stroke.
- parameter width: The width of the stroke as a Float value.
- parameter range: An optional range where the attributes will be applied. No range means the whole string.

- returns: A StringTuner to stroke the text.
*/
public func pms_stroke(color: UIColor, width: Float, range: NSRange? = nil) -> StringTuner {
    return stroke(color, width: width, range: range)
}

/**
This function indicates whether the text is underlined
and corresponds to one of the constants described in
“Underline and Strikethrough Style Attributes”

- parameter color: The color used to underline
- parameter style: The style used to underline (single, double...)
- parameter range: An optional range where the attributes will be applied. No range means the whole string.

- returns: A StringTuner to underline the text.
*/
func underline(color: Color, style: NSUnderlineStyle, range: NSRange? = nil) -> StringTuner {
    return {
        ats in
        var ret = addAttribute(ats, attr: NSUnderlineColorAttributeName, value: color, range: range)
        ret = addAttribute(ret, attr: NSUnderlineStyleAttributeName, value: style.rawValue, range: range)
        return ret
    }
}

/**
This function indicates whether the text has a line 
through it and corresponds to one of the constants
described in “Underline and Strikethrough Style Attributes”.

- parameter color: The color used to strike the text.
- parameter style: The style used to strike the text (single, double...)
- parameter range: An optional range where the attributes will be applied. No range means the whole string.

- returns: A StringTuner to strike the text.
*/
func strike(color: Color, style: NSUnderlineStyle, range: NSRange? = nil) -> StringTuner {
    return {
        ats in
        var ret = addAttribute(ats, attr: NSStrikethroughColorAttributeName, value: color, range: range)
        ret = addAttribute(ret, attr: NSStrikethroughStyleAttributeName, value: style.rawValue, range: range)
        return ret
    }
}
