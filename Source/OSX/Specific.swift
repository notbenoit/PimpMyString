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

import AppKit

/**
Use this function to change the font for a range of text.

:param: font  The font to apply.
:param: range An optional range where the font will be applied. No range means the whole string.

:returns: A StringTuner to tune the font.
*/
public func pms_font(fontP: NSFont, range: NSRange? = nil) -> StringTuner {
    return font(fontP, range: range)
}

/**
Use this function to specify the color of the text during rendering.

:param: color The color to apply to the text.
:param: range An optional range where the color will be applied. No range means the whole string.

:returns: A StringTuner to tune the text color.
*/
public func pms_fgColor(color: NSColor, range: NSRange? = nil) -> StringTuner {
    return fgColor(color, range: range)
}

/**
Use this function to specify the color of the background area behind the text.

:param: color The color to apply to the background.
:param: range An optional range where the background color will be applied. No range means the whole string.

:returns: A StringTuner to tune the background color.
*/

public func pms_bgColor(color: NSColor, range: NSRange? = nil) -> StringTuner {
    return bgColor(color, range: range)
}

/**
This functions sets the stroke color, and stroke width of
the text to draw.

:param: color The color of the stroke.
:param: width The width of the stroke as a Float value.
:param: range An optional range where the attributes will be applied. No range means the whole string.

:returns: A StringTuner to stroke the text.
*/
public func pms_stroke(color: NSColor, width: Float, range: NSRange? = nil) -> StringTuner {
    return stroke(color, width: width, range: range)
}
