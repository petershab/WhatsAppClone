//
//  Locale+CountryCode.swift
//  WhatsAppClone
//
//  Created by Peter Shaburov on 6/1/21.
//

import Foundation
import UIKit
extension Locale {
    static func currentCountryName() -> String? {
        return Locale.current.localizedString(forRegionCode: Locale.current.regionCode!)
    }
    
    static func currentCountryCode() -> String? {
        return Locale.current.regionCode
    }
    
    static func getCountryName(from code: String) -> String? {
        return Locale.current.localizedString(forRegionCode: code)
    }
    
    static func getCountryCode(from name: String) -> String? {
        return Locale.current.isoCode(for: name)
    }
    
    func isoCode(for countryName: String) -> String? {
            return Locale.isoRegionCodes.first(where: { (code) -> Bool in
                localizedString(forRegionCode: code)?.compare(countryName, options: [.caseInsensitive, .diacriticInsensitive]) == .orderedSame
            })
        }
    
}








struct Country {
    let countryDictionary  = ["AF": "93",
                              "AL": "355",
                              "DZ": "213",
                              "AD": "376",
                              "AO": "244",
                              "AQ": "672",
                              "AR": "54",
                              "AM": "374",
                              "AW": "297",
                              "AU": "61",
                              "AT": "43",
                              "AZ": "994",
                              "BH": "973",
                              "BD": "880",
                              "BY": "375",
                              "BE": "32",
                              "BZ": "501",
                              "BJ": "229",
                              "BT": "975",
                              "BA": "387",
                              "BW": "267",
                              "BR": "55",
                              "IO": "246",
                              "BG": "359",
                              "BF": "226",
                              "BI": "257",
                              "KH": "855",
                              "CM": "237",
                              "CV": "238",
                              "KY": "345",
                              "CF": "236",
                              "TD": "235",
                              "CL": "56",
                              "CN": "86",
                              "CO": "57",
                              "KM": "269",
                              "CG": "242",
                              "CK": "682",
                              "CR": "506",
                              "HR": "385",
                              "CU": "53",
                              "CY": "537",
                              "CZ": "420",
                              "DK": "45",
                              "DJ": "253",
                              "EC": "593",
                              "EG": "20",
                              "SV": "503",
                              "GQ": "240",
                              "ER": "291",
                              "EE": "372",
                              "ET": "251",
                              "FO": "298",
                              "FJ": "679",
                              "FI": "358",
                              "FR": "33",
                              "GF": "594",
                              "PF": "689",
                              "GA": "241",
                              "GM": "220",
                              "GE": "995",
                              "DE": "49",
                              "GH": "233",
                              "GI": "350",
                              "GR": "30",
                              "GL": "299",
                              "GP": "590",
                              "GT": "502",
                              "GN": "224",
                              "GW": "245",
                              "GY": "595",
                              "HT": "509",
                              "HN": "504",
                              "HU": "36",
                              "IS": "354",
                              "IN": "91",
                              "ID": "62",
                              "IQ": "964",
                              "IE": "353",
                              "IL": "972",
                              "IT": "39",
                              "JP": "81",
                              "JO": "962",
                              "KZ": "77",
                              "KE": "254",
                              "KI": "686",
                              "KW": "965",
                              "KG": "996",
                              "LV": "371",
                              "LB": "961",
                              "LS": "266",
                              "LR": "231",
                              "LI": "423",
                              "LT": "370",
                              "LU": "352",
                              "MG": "261",
                              "MW": "265",
                              "MY": "60",
                              "MV": "960",
                              "ML": "223",
                              "MT": "356",
                              "MH": "692",
                              "MQ": "596",
                              "MR": "222",
                              "MU": "230",
                              "MX": "52",
                              "MC": "377",
                              "MN": "976",
                              "ME": "382",
                              "MA": "212",
                              "MM": "95",
                              "NA": "264",
                              "NR": "674",
                              "NP": "977",
                              "NL": "31",
                              "AN": "599",
                              "NC": "687",
                              "NZ": "64",
                              "NI": "505",
                              "NE": "227",
                              "NG": "234",
                              "NU": "683",
                              "NF": "672",
                              "NO": "47",
                              "OM": "968",
                              "PK": "92",
                              "PW": "680",
                              "PA": "507",
                              "PG": "675",
                              "PY": "595",
                              "PE": "51",
                              "PH": "63",
                              "PL": "48",
                              "PT": "351",
                              "QA": "974",
                              "RO": "40",
                              "RW": "250",
                              "WS": "685",
                              "SM": "378",
                              "SA": "966",
                              "SN": "221",
                              "RS": "381",
                              "SC": "248",
                              "SL": "232",
                              "SG": "65",
                              "SK": "421",
                              "SI": "386",
                              "SB": "677",
                              "ZA": "27",
                              "ES": "34",
                              "LK": "94",
                              "SD": "249",
                              "SR": "597",
                              "SZ": "268",
                              "SE": "46",
                              "CH": "41",
                              "TJ": "992",
                              "TH": "66",
                              "TG": "228",
                              "TK": "690",
                              "TO": "676",
                              "TN": "216",
                              "TR": "90",
                              "TM": "993",
                              "TV": "688",
                              "UG": "256",
                              "UA": "380",
                              "AE": "971",
                              "GB": "44",
                              "US": "1",
                              "UY": "598",
                              "UZ": "998",
                              "VU": "678",
                              "WF": "681",
                              "YE": "967",
                              "ZM": "260",
                              "ZW": "263",
                              "BO": "591",
                              "BN": "673",
                              "CD": "243",
                              "CI": "225",
                              "FK": "500",
                              "VA": "379",
                              "HK": "852",
                              "IR": "98",
                              "KP": "850",
                              "KR": "82",
                              "LA": "856",
                              "LY": "218",
                              "MO": "853",
                              "MK": "389",
                              "FM": "691",
                              "MD": "373",
                              "MZ": "258",
                              "PS": "970",
                              "PN": "872",
                              "RE": "262",
                              "RU": "7",
                              "SH": "290",
                              "PM": "508",
                              "ST": "239",
                              "SO": "252",
                              "SJ": "47",
                              "SY": "963",
                              "TW": "886",
                              "TZ": "255",
                              "TL": "670",
                              "VE": "58",
                              "VN": "84",
                              "VG": "284",
                              "VI": "340",
                              "EH": "121"]
    
    func getCountryPhoneCode (_ country : String) -> String {
        
        if let _ = Int(country) {
            for region in countryDictionary.values {
                if region == country {
                    return countryDictionary.someKey(forValue: region)!
                }
            }
            return "error"
            
        } else {
            if let countryCode = countryDictionary[country] {
                return countryCode
            }
        }
        
        return ""
    }
    
    func getCountryPhoneCode(from countryName: String) -> String {
        if let countryCode = countryDictionary[Locale.getCountryCode(from: countryName)!] {
            return countryCode
        }
        return ""
    }
    
    func getListOfCountryNames() -> [String] {
        var arrayOfNames: [String] = []
        for key in Array(countryDictionary.keys) {
            arrayOfNames.append(Locale.getCountryName(from: key)!)
        }
        return arrayOfNames
    }
}
