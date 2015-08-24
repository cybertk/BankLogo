//
//  BankLogo.swift
//  BankLogo
//
//  Created by Quanlong He on 7/21/15.
//  Copyright (c) 2015 com.cybertk. All rights reserved.
//

import UIKit

public enum Bank: String {
    case ABC = "ABC"
    case BHB = "BHB"
    case BJBANK = "BJBANK"
    case BJRCB = "BJRCB"
    case BOC = "BOC"
    case BSB = "BSB"
    case CCB = "CCB"
    case CDRCB = "CDRCB"
    case CEB = "CEB"
    case CIB = "CIB"
    case CITIC = "CITIC"
    case CMB = "CMB"
    case CMBC = "CMBC"
    case COMM = "COMM"
    case CQBANK = "CQBANK"
    case CQRCB = "CQRCB"
    case GCB = "GCB"
    case GDB = "GDB"
    case GZB = "GZB"
    case HKB = "HKB"
    case HRBANK = "HRBANK"
    case HSBANK = "HSBANK"
    case HXBANK = "HXBANK"
    case HZCB = "HZCB"
    case ICBC = "ICBC"
    case JRCB = "JRCB"
    case JSBANK = "JSBANK"
    case JSRCU = "JSRCU"
    case LYBANK = "LYBANK"
    case NBBANK = "NBBANK"
    case NCB = "NCB"
    case NJCB = "NJCB"
    case NYBANK = "NYBANK"
    case PSBC = "PSBC"
    case SCB = "SCB"
    case SCBBANK = "SCBBANK"
    case SDB = "SDB"
    case SHBANK = "SHBANK"
    case SHRCB = "SHRCB"
    case SJBANK = "SJBANK"
    case SPABANK = "SPABANK"
    case SPDB = "SPDB"
    case SRBANK = "SRBANK"
    case TCCB = "TCCB"
    case TLBANK = "TLBANK"
    case URMQCCB = "URMQCCB"
    case WHCCB = "WHCCB"
    case WZCB = "WZCB"
    case YDRCB = "YDRCB"


    // MARK: Initilizers

    public init?(_ string: String?) {
        guard let string = string else {
            return nil
        }

        self.init(rawValue: string)
    }
}

public class BankLogo: UIImageView {

    // MARK: API

    public var bank: Bank? = nil {
        didSet {
            self.image = imageForBank(bank)
        }
    }

    // MARK: Initialization

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.image = imageForBank(nil)
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)

        self.image = imageForBank(nil)
    }

    // MARK: Private implementation

    private static let map: [Bank: String] = [
        .ABC: "ABC@2x.png",
        .BHB: "BHB@2x.png",
        .BJBANK: "BJBANK@2x.png",
        .BJRCB: "BJRCB@2x.png",
        .BOC: "BOC@2x.png",
        .BSB: "BSB@2x.png",
        .CCB: "CCB@2x.png",
        .CDRCB: "CDRCB@2x.png",
        .CEB: "CEB@2x.png",
        .CIB: "CIB@2x.png",
        .CITIC: "CITIC@2x.png",
        .CMB: "CMB@2x.png",
        .CMBC: "CMBC@2x.png",
        .COMM: "COMM@2x.png",
        .CQBANK: "CQBANK@2x.png",
        .CQRCB: "CQRCB@2x.png",
        .GCB: "GCB@2x.png",
        .GDB: "GDB@2x.png",
        .GZB: "GZB@2x.png",
        .HKB: "HKB@2x.png",
        .HRBANK: "HRBANK@2x.png",
        .HSBANK: "HSBANK@2x.png",
        .HXBANK: "HXBANK@2x.png",
        .HZCB: "HZCB@2x.png",
        .ICBC: "ICBC@2x.png",
        .JRCB: "JRCB@2x.png",
        .JSBANK: "JSBANK@2x.png",
        .JSRCU: "JSRCU@2x.png",
        .LYBANK: "LYBANK@2x.png",
        .NBBANK: "NBBANK@2x.png",
        .NCB: "NCB@2x.png",
        .NJCB: "NJCB@2x.png",
        .NYBANK: "NYBANK@2x.png",
        .PSBC: "PSBC@2x.png",
        .SCB: "SCB@2x.png",
        .SCBBANK: "SCBBANK@2x.png",
        .SDB: "SDB@2x.png",
        .SHBANK: "SHBANK@2x.png",
        .SHRCB: "SHRCB@2x.png",
        .SJBANK: "SJBANK@2x.png",
        .SPABANK: "SPABANK@2x.png",
        .SPDB: "SPDB@2x.png",
        .SRBANK: "SRBANK@2x.png",
        .TCCB: "TCCB@2x.png",
        .TLBANK: "TLBANK@2x.png",
        .URMQCCB: "URMQCCB@2x.png",
        .WHCCB: "WHCCB@2x.png",
        .WZCB: "WZCB@2x.png",
        .YDRCB: "YDRCB@2x.png",
    ]

    private func imageForBank(bank: Bank?) -> UIImage? {

        let path = NSBundle(forClass: self.dynamicType).pathForResource("Logos", ofType: "bundle")
        let bundle = NSBundle(path: path!)

        if bank == nil {
            return UIImage(named: "Default@2x.png", inBundle: bundle, compatibleWithTraitCollection: nil)
        } else {
            return UIImage(named: BankLogo.map[bank!]!, inBundle: bundle, compatibleWithTraitCollection: nil)
        }
    }
   
}
