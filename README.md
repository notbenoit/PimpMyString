![PMS](https://raw.githubusercontent.com/notbenoit/notbenoit.github.io/master/images/pms/pms.png)

[![Build Status](https://travis-ci.org/notbenoit/PimpMyString.svg?branch=master)](https://travis-ci.org/notbenoit/PimpMyString)
![Cocoapods Compatible](https://img.shields.io/badge/pod-v1.1.0-blue.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


# PimpMyString
PimpMyString is an iOS/OSX wrapper around NSAttributedStrong. It has the advantage of being strongly typed while NSStringAdditions are not.


## Requirements

- iOS 8.0+
- OSX 10.9

## Installation

### Carthage
[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate PimpMyString into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "notbenoit/PimpMyString" >= 1.1.0
```

### CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To add `PimpMyString` to your project, add this line to your  `Podfile` :

```ruby
pod 'PimpMyString', '~> 1.1.0'
```

### Manual
- Simply add the `PimpMyString.xcodeproj` to your workspace and add the appropriate framework (iOS/OSX) as a dependency of your project.
- You can also build the framework and directly link it to your target.

## Usage
Just import PMS in your source file, and call the StringTuner(s) you need.
A sample code worth a thousand words (taken from the example playgrounds) :

```swift
import PMS

let string = "Hello PMS !"

let stringTuner = pms_underline(UIColor.redColor(), .StyleDouble)
    >>> pms_fgColor(UIColor.purpleColor())
    >>> pms_bgColor(UIColor.blackColor())
    >>> pms_font(UIFont.boldSystemFontOfSize(24))
    >>> pms_fgColor(UIColor.orangeColor(), range: NSMakeRange(0, 1))
    >>> pms_strikeThrough(UIColor.greenColor().colorWithAlphaComponent(0.5), NSUnderlineStyle.StyleSingle)
    >>> pms_skew(0.3)
    >>> pms_stroke(UIColor.brownColor(), 4)
    >>> pms_effectLetterPress()

let attributedString = stringTuner(NSAttributedString(string: string))

// Do whatever you want with the attributed string.
label.attributedText = attributedString
```
All attributes will be processed from left to right.

![Example](https://raw.githubusercontent.com/notbenoit/notbenoit.github.io/master/images/pms/example.png)

Ok, I'm not an artist, but whatever....

## Changelog
### 1.0.0
Initial version

## Creator

- [Benoît Layer](http://github.com/notbenoit) ([@notbenoit](https://twitter.com/notbenoit))

## License

PimpMyString is released under the New BSD License. See LICENSE for details.
