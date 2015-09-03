# BankLogo

[![CI Status](http://img.shields.io/travis/cybertk/BankLogo/master.svg?style=flat)](https://travis-ci.org/cybertk/BankLogo)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/BankLogo.svg?style=flat)](http://cocoadocs.org/docsets/BankLogo)
[![Platform](https://img.shields.io/cocoapods/p/BankLogo.svg?style=flat)](http://cocoadocs.org/docsets/BankLogo)

## Installation

### Carthage

To integrate BankLogo into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```ogdl
github "cybertk/BankLogo" ~> 0.1
```

### CocoaPods

BankLogo is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BankLogo"
```

## Getting Started

### Storyboard and Xib

Just add a **UIView** and set its Class to **BankLogo**, See [storyboard-example](Example/).

Then update Bank's Logo with `view.bank = Bank.CMB`

### Code

```swift
import BankLogo

func viewDidLoad() {
    let logo = BankLogo(frame: CGRectZero)
    logo.bank = Bank.ABC

    view.addSubView(logo)
}
```

See [Example](Example/)

## Banks Supported

| Bank | Icon | Name |
| ---- | ---- | ---- |
| ABC | ![](BankLogo/Logos.bundle/ABC@2x.png) | |
| BHB | ![](BankLogo/Logos.bundle/BHB@2x.png) | |
| BJBANK | ![](BankLogo/Logos.bundle/BJBANK@2x.png) | |
| BJRCB | ![](BankLogo/Logos.bundle/BJRCB@2x.png) | |
| BOC | ![](BankLogo/Logos.bundle/BOC@2x.png) | |
| BSB | ![](BankLogo/Logos.bundle/BSB@2x.png) | |
| CCB | ![](BankLogo/Logos.bundle/CCB@2x.png) | |
| CDRCB | ![](BankLogo/Logos.bundle/CDRCB@2x.png) | |
| CEB | ![](BankLogo/Logos.bundle/CEB@2x.png) | |
| CIB | ![](BankLogo/Logos.bundle/CIB@2x.png) | |
| CITIC | ![](BankLogo/Logos.bundle/CITIC@2x.png) | |
| CMB | ![](BankLogo/Logos.bundle/CMB@2x.png) | |
| CMBC | ![](BankLogo/Logos.bundle/CMBC@2x.png) | |
| COMM | ![](BankLogo/Logos.bundle/COMM@2x.png) | |
| CQBANK | ![](BankLogo/Logos.bundle/CQBANK@2x.png) | |
| CQRCB | ![](BankLogo/Logos.bundle/CQRCB@2x.png) | |
| GCB | ![](BankLogo/Logos.bundle/GCB@2x.png) | |
| GDB | ![](BankLogo/Logos.bundle/GDB@2x.png) | |
| GZB | ![](BankLogo/Logos.bundle/GZB@2x.png) | |
| HKB | ![](BankLogo/Logos.bundle/HKB@2x.png) | |
| HRBANK | ![](BankLogo/Logos.bundle/HRBANK@2x.png) | |
| HSBANK | ![](BankLogo/Logos.bundle/HSBANK@2x.png) | |
| HXBANK | ![](BankLogo/Logos.bundle/HXBANK@2x.png) | |
| HZCB | ![](BankLogo/Logos.bundle/HZCB@2x.png) | |
| ICBC | ![](BankLogo/Logos.bundle/ICBC@2x.png) | |
| JRCB | ![](BankLogo/Logos.bundle/JRCB@2x.png) | |
| JSBANK | ![](BankLogo/Logos.bundle/JSBANK@2x.png) | |
| JSRCU | ![](BankLogo/Logos.bundle/JSRCU@2x.png) | |
| LYBANK | ![](BankLogo/Logos.bundle/LYBANK@2x.png) | |
| NBBANK | ![](BankLogo/Logos.bundle/NBBANK@2x.png) | |
| NCB | ![](BankLogo/Logos.bundle/NCB@2x.png) | |
| NJCB | ![](BankLogo/Logos.bundle/NJCB@2x.png) | |
| NYBANK | ![](BankLogo/Logos.bundle/NYBANK@2x.png) | |
| PSBC | ![](BankLogo/Logos.bundle/PSBC@2x.png) | |
| SCB | ![](BankLogo/Logos.bundle/SCB@2x.png) | |
| SCBBANK | ![](BankLogo/Logos.bundle/SCBBANK@2x.png) | |
| SDB | ![](BankLogo/Logos.bundle/SDB@2x.png) | |
| SHBANK | ![](BankLogo/Logos.bundle/SHBANK@2x.png) | |
| SHRCB | ![](BankLogo/Logos.bundle/SHRCB@2x.png) | |
| SJBANK | ![](BankLogo/Logos.bundle/SJBANK@2x.png) | |
| SPABANK | ![](BankLogo/Logos.bundle/SPABANK@2x.png) | |
| SPDB | ![](BankLogo/Logos.bundle/SPDB@2x.png) | |
| SRBANK | ![](BankLogo/Logos.bundle/SRBANK@2x.png) | |
| TCCB | ![](BankLogo/Logos.bundle/TCCB@2x.png) | |
| TLBANK | ![](BankLogo/Logos.bundle/TLBANK@2x.png) | |
| URMQCCB | ![](BankLogo/Logos.bundle/URMQCCB@2x.png) | |
| WHCCB | ![](BankLogo/Logos.bundle/WHCCB@2x.png) | |
| WZCB | ![](BankLogo/Logos.bundle/WZCB@2x.png) | |
| YDRCB | ![](BankLogo/Logos.bundle/YDRCB@2x.png) | |

## References

- https://github.com/digglife/cnbankcard
- https://github.com/navyxie/bankcardinfo

## License

BankLogo is available under the MIT license. See the LICENSE file for more info.

