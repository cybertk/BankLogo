//
//  BankFromNumber.swift
//  BankLogo
//
//  Created by Quanlong He on 8/20/15.
//  Copyright © 2015 com.cybertk. All rights reserved.
//

import Foundation


// Bool.initWithInt()
extension Bool {
    init?<T : IntegerType>(_ integer: T?){
        guard let integer = integer else {
            return nil
        }

        self.init(integer != 0)
    }
}


public enum ParseError: ErrorType {
    case Network
    case EmptyResponse
    case InvalidResponse
    case InvalidKey
    case InvalidCardNumber
}

public struct BankCard {

    public var bank: String = ""
    public var type: String = ""
    public var stat: String = ""

    public static func parse(cardNumber number: String, completionHandler: (BankCard?, ParseError?) -> Void) {

        let url = NSURL(string: "https://ccdcapi.alipay.com/validateAndCacheCardInfo.json?_input_charset=utf-8&cardNo=\(number)&cardBinCheck=true")

        // {"bank":"ICBC","validated":true,"cardType":"SCC","stat":"ok","messages":[],"key":"1438154967062-7837-10.208.0.17-796459287"}
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) -> Void in

            guard error == nil else {
                print("NSURLSession \(error!.description)")
                return completionHandler(nil, ParseError.Network)
            }

            guard let data = data else {
                print("dataTaskWithURL error: nil")
                return completionHandler(nil, ParseError.EmptyResponse)
            }

            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions())

                guard let validated = Bool(json["validated"] as? Int) where validated == true else {
                    print("Invalid card number: \(json)")
                    return completionHandler(nil, ParseError.InvalidCardNumber)
                }

                guard let bank = json["bank"] as? String,
                    type = json["cardType"] as? String,
                    stat = json["stat"] as? String
                    else {
                        print("Invalid Json: \(json)")
                        return completionHandler(nil, ParseError.InvalidKey)
                }

                let card = BankCard(bank: bank, type: type, stat: stat)
                return completionHandler(card, nil)

            } catch {
                print("JSONObjectWithData error: \(error)")
                return completionHandler(nil, ParseError.InvalidResponse)
            }
        }
        
        task.resume()
    }
}


