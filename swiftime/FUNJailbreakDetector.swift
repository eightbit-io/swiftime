//
//  FUNJailbreakDetector.swift
//  swiftime
//
//  Created by mg on 9/07/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

import Foundation

class FUNJailbreakDetector {
    class func checkIfDeviceIsJailBroken() -> Bool {
        if (NSFileManager.defaultManager().fileExistsAtPath("/Applications/Cydia.app")) {
            return true
        } else {
            return false
        }
    }
}