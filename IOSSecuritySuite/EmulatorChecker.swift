//
//  EmulatorChecker.swift
//  IOSSecuritySuite
//
//  Created by wregula on 23/04/2019.
//  Copyright © 2019 wregula. All rights reserved.
//

import Foundation

internal class H6BplQl6Px9F84QXr5aMC214RPdHxMMs {

    static func kE1TyGfGKKReS0ssbxxc7NfSVTXj2dS8() -> Bool {

        return vgsq47G37vfnymjwPlDtN0NFASMj0xq7() || bB8fjErVwBf26ZidMMJ01z08Zohk4Geb()
    }

    private static func bB8fjErVwBf26ZidMMJ01z08Zohk4Geb() -> Bool {

        return ProcessInfo().environment["SIMULATOR_DEVICE_NAME"] != nil
    }

    private static func vgsq47G37vfnymjwPlDtN0NFASMj0xq7() -> Bool {

        #if targetEnvironment(simulator)
        return true
        #else
        return false
        #endif
    }

}
