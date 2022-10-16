//
//  JailbreakChecker.swift
//  IOSSecuritySuite
//
//  Created by wregula on 23/04/2019.
//  Copyright © 2019 wregula. All rights reserved.
//
//swiftlint:disable cyclomatic_complexity function_body_length type_body_length

import Foundation
import UIKit
import Darwin // fork
import MachO // dyld

public typealias FailedCheck = (check: w3oQnLBfdulnIkE7WoSLLAN8c5LWeJF0, failMessage: String)

public enum w3oQnLBfdulnIkE7WoSLLAN8c5LWeJF0: CaseIterable {
    case YWMruGvoZlHWaPYNEZaHruwfEjfUIqOj
    case apMfvrvcnx2p5PRR80uhhWjsonj49eGJ
    case OrG9wB2fvWKZMERmG9QrJ3NeHxRcvWYh
    case Ul5ianXsE7Hn2Hw8n1bqx9vwz05rzoTB
    case AxHzr1lPQWqdJGZc18UHGgePK6hONHf9
    case obZO2lGEcmqc6YParfTFIlR5I5yDtnOZ
    case usYXhyWmThAdfsHtHTMQLaL5M2VeNaHN
}

internal class MzL0sbBM5Z91CMMXfdhuyHGWvNtLQSAj {
    typealias CheckResult = (passed: Bool, failMessage: String)

    struct xyAnuVi8iu2SFVJzR4AESo57QBPCHbAT {
        let STpqb4NhI0QRAIMjlUx42DLwiderAIWI: Bool
        let vIGEurhaXoc2rRnnxT5v2FQmgSjGyiAP: String // Added for backwards compatibility
        let zFFnoVG6EgGghNSZJTj2apZ6SbjWsbfP: [FailedCheck]
    }

    static func bqN0v8TToc6rPgDSsrERExHnF2Ejy5nN() -> Bool {
        return !mwpyQSW7uVNDjJcpAvuiKr1OnhFAzzaf().STpqb4NhI0QRAIMjlUx42DLwiderAIWI
    }

    static func MRWVO4bUkk1ce88PxUZnKBZ2XFsw2L0P() -> (jailbroken: Bool, failMessage: String) {
        let status = mwpyQSW7uVNDjJcpAvuiKr1OnhFAzzaf()
        return (!status.STpqb4NhI0QRAIMjlUx42DLwiderAIWI, status.vIGEurhaXoc2rRnnxT5v2FQmgSjGyiAP)
    }

    static func K937GVF2Rqjcy9XdcFFVqY4k6GHANOzv() -> (jailbroken: Bool, failedChecks: [FailedCheck]) {
        let status = mwpyQSW7uVNDjJcpAvuiKr1OnhFAzzaf()
        return (!status.STpqb4NhI0QRAIMjlUx42DLwiderAIWI, status.zFFnoVG6EgGghNSZJTj2apZ6SbjWsbfP)
    }

    private static func mwpyQSW7uVNDjJcpAvuiKr1OnhFAzzaf() -> xyAnuVi8iu2SFVJzR4AESo57QBPCHbAT {
        var passed = true
        var failMessage = ""
        var result: CheckResult = (true, "")
        var failedChecks: [FailedCheck] = []

        for check in w3oQnLBfdulnIkE7WoSLLAN8c5LWeJF0.allCases {
            switch check {
            case .YWMruGvoZlHWaPYNEZaHruwfEjfUIqOj:
                result = yzXDR0BUYcpYTpwyEmUeqMGHLtjnIXlb()
            case .apMfvrvcnx2p5PRR80uhhWjsonj49eGJ:
                result = XkbSIPRH86i7DbxIfDo9HWHYdotcT4GX()
            case .OrG9wB2fvWKZMERmG9QrJ3NeHxRcvWYh:
                result = ZSULnJpiMIhsTwPqX8fdyGsxbdxOaV49()
            case .Ul5ianXsE7Hn2Hw8n1bqx9vwz05rzoTB:
                result = SJrVxoGeLdEZW7ReDuLLubWM9aGoGSJB()
            case .AxHzr1lPQWqdJGZc18UHGgePK6hONHf9:
                if !H6BplQl6Px9F84QXr5aMC214RPdHxMMs.kE1TyGfGKKReS0ssbxxc7NfSVTXj2dS8() {
                    result = ve4sbxcUwD7CyaP8VWhYmajJuaf5OF02()
                } else {
                    print("App run in the emulator, skipping the fork check.")
                    result = (true, "")
                }
            case .obZO2lGEcmqc6YParfTFIlR5I5yDtnOZ:
                result = FLXtBAf69k1Oz0a8kWeTTdbAI7XxesA4()
            case .usYXhyWmThAdfsHtHTMQLaL5M2VeNaHN:
                result = OThGT3qQBZFjsCltEl46n2h2EpjcD8cy()
            }

            passed = passed && result.passed

            if !result.passed {
                failedChecks.append((check: check, failMessage: result.failMessage))

                if !failMessage.isEmpty {
                    failMessage += ", "
                }
            }

            failMessage += result.failMessage
        }

        return xyAnuVi8iu2SFVJzR4AESo57QBPCHbAT(STpqb4NhI0QRAIMjlUx42DLwiderAIWI: passed, vIGEurhaXoc2rRnnxT5v2FQmgSjGyiAP: failMessage, zFFnoVG6EgGghNSZJTj2apZ6SbjWsbfP: failedChecks)
    }

    private static func E31B5wESkqmoBUXddGO8TGMflvZgYYFB(urlSchemes: [String]) -> CheckResult {
        for urlScheme in urlSchemes {
            if let url = URL(string: urlScheme) {
                if UIApplication.shared.canOpenURL(url) {
                    return(false, "\(urlScheme) URL scheme detected")
                }
            }
        }
        return (true, "")
    }

    // "cydia://" URL scheme has been removed. Turns out there is app in the official App Store
    // that has the cydia:// URL scheme registered, so it may cause false positive
    private static func yzXDR0BUYcpYTpwyEmUeqMGHLtjnIXlb() -> CheckResult {
        var flag: (passed: Bool, failMessage: String) = (true, "")
        let urlSchemes = [
            "undecimus://",
            "sileo://",
            "zbra://",
            "filza://",
            "activator://"
        ]

        if Thread.isMainThread {
            flag = E31B5wESkqmoBUXddGO8TGMflvZgYYFB(urlSchemes: urlSchemes)
        } else {
            let semaphore = DispatchSemaphore(value: 0)
            DispatchQueue.main.async {
                flag = E31B5wESkqmoBUXddGO8TGMflvZgYYFB(urlSchemes: urlSchemes)
                semaphore.signal()
            }
            semaphore.wait()
        }
        return flag
    }

    private static func XkbSIPRH86i7DbxIfDo9HWHYdotcT4GX() -> CheckResult {
        var paths = [
            "/var/mobile/Library/Preferences/ABPattern", // A-Bypass
            "/usr/lib/ABDYLD.dylib", // A-Bypass,
            "/usr/lib/ABSubLoader.dylib", // A-Bypass
            "/usr/sbin/frida-server", // frida
            "/etc/apt/sources.list.d/electra.list", // electra
            "/etc/apt/sources.list.d/sileo.sources", // electra
            "/.bootstrapped_electra", // electra
            "/usr/lib/libjailbreak.dylib", // electra
            "/jb/lzma", // electra
            "/.cydia_no_stash", // unc0ver
            "/.installed_unc0ver", // unc0ver
            "/jb/offsets.plist", // unc0ver
            "/usr/share/jailbreak/injectme.plist", // unc0ver
            "/etc/apt/undecimus/undecimus.list", // unc0ver
            "/var/lib/dpkg/info/mobilesubstrate.md5sums", // unc0ver
            "/Library/MobileSubstrate/MobileSubstrate.dylib",
            "/jb/jailbreakd.plist", // unc0ver
            "/jb/amfid_payload.dylib", // unc0ver
            "/jb/libjailbreak.dylib", // unc0ver
            "/usr/libexec/cydia/firmware.sh",
            "/var/lib/cydia",
            "/etc/apt",
            "/private/var/lib/apt",
            "/private/var/Users/",
            "/var/log/apt",
            "/Applications/Cydia.app",
            "/private/var/stash",
            "/private/var/lib/apt/",
            "/private/var/lib/cydia",
            "/private/var/cache/apt/",
            "/private/var/log/syslog",
            "/private/var/tmp/cydia.log",
            "/Applications/Icy.app",
            "/Applications/MxTube.app",
            "/Applications/RockApp.app",
            "/Applications/blackra1n.app",
            "/Applications/SBSettings.app",
            "/Applications/FakeCarrier.app",
            "/Applications/WinterBoard.app",
            "/Applications/IntelliScreen.app",
            "/private/var/mobile/Library/SBSettings/Themes",
            "/Library/MobileSubstrate/CydiaSubstrate.dylib",
            "/System/Library/LaunchDaemons/com.ikey.bbot.plist",
            "/Library/MobileSubstrate/DynamicLibraries/Veency.plist",
            "/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist",
            "/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist",
            "/Applications/Sileo.app",
            "/var/binpack",
            "/Library/PreferenceBundles/LibertyPref.bundle",
            "/Library/PreferenceBundles/ShadowPreferences.bundle",
            "/Library/PreferenceBundles/ABypassPrefs.bundle",
            "/Library/PreferenceBundles/FlyJBPrefs.bundle",
            "/usr/lib/libhooker.dylib",
            "/usr/lib/libsubstitute.dylib",
            "/usr/lib/substrate",
            "/usr/lib/TweakInject",
            "/var/binpack/Applications/loader.app", // checkra1n
            "/Applications/FlyJB.app", // Fly JB X
            "/Applications/Zebra.app" // Zebra
        ]
        
        // These files can give false positive in the emulator
        if !H6BplQl6Px9F84QXr5aMC214RPdHxMMs.kE1TyGfGKKReS0ssbxxc7NfSVTXj2dS8() {
            paths += [
            "/bin/bash",
            "/usr/sbin/sshd",
            "/usr/libexec/ssh-keysign",
            "/bin/sh",
            "/etc/ssh/sshd_config",
            "/usr/libexec/sftp-server",
            "/usr/bin/ssh"
            ]
        }

        for path in paths {
            if FileManager.default.fileExists(atPath: path) {
                return (false, "Suspicious file exists: \(path)")
            }
        }

        return (true, "")
    }

    private static func ZSULnJpiMIhsTwPqX8fdyGsxbdxOaV49() -> CheckResult {

        var paths = [
            "/.installed_unc0ver",
            "/.bootstrapped_electra",
            "/Applications/Cydia.app",
            "/Library/MobileSubstrate/MobileSubstrate.dylib",
            "/etc/apt",
            "/var/log/apt"
        ]
        
        // These files can give false positive in the emulator
        if !H6BplQl6Px9F84QXr5aMC214RPdHxMMs.kE1TyGfGKKReS0ssbxxc7NfSVTXj2dS8() {
            paths += [
            "/bin/bash",
            "/usr/sbin/sshd",
            "/usr/bin/ssh"
            ]
        }

        for path in paths {

            if FileManager.default.isReadableFile(atPath: path) {
                return (false, "Suspicious file can be opened: \(path)")
            }
        }

        return (true, "")
    }

    private static func SJrVxoGeLdEZW7ReDuLLubWM9aGoGSJB() -> CheckResult {

        let paths = [
            "/",
            "/root/",
            "/private/",
            "/jb/"
        ]

        // If library won't be able to write to any restricted directory the return(false, ...) is never reached
        // because of catch{} statement
        for path in paths {
            do {
                let pathWithSomeRandom = path+UUID().uuidString
                try "AmIJailbroken?".write(toFile: pathWithSomeRandom, atomically: true, encoding: String.Encoding.utf8)
                try FileManager.default.removeItem(atPath: pathWithSomeRandom) // clean if succesfully written
                return (false, "Wrote to restricted path: \(path)")
            } catch {}
        }

        return (true, "")
    }

    private static func ve4sbxcUwD7CyaP8VWhYmajJuaf5OF02() -> CheckResult {

        let pointerToFork = UnsafeMutableRawPointer(bitPattern: -2)
        let forkPtr = dlsym(pointerToFork, "fork")
        typealias ForkType = @convention(c) () -> pid_t
        let fork = unsafeBitCast(forkPtr, to: ForkType.self)
        let forkResult = fork()

        if forkResult >= 0 {
            if forkResult > 0 {
                kill(forkResult, SIGTERM)
            }
            return (false, "Fork was able to create a new process (sandbox violation)")
        }

        return (true, "")
    }

    private static func FLXtBAf69k1Oz0a8kWeTTdbAI7XxesA4() -> CheckResult {

        let paths = [
            "/var/lib/undecimus/apt", // unc0ver
            "/Applications",
            "/Library/Ringtones",
            "/Library/Wallpaper",
            "/usr/arm-apple-darwin9",
            "/usr/include",
            "/usr/libexec",
            "/usr/share"
        ]

        for path in paths {
            do {
                let result = try FileManager.default.destinationOfSymbolicLink(atPath: path)
                if !result.isEmpty {
                    return (false, "Non standard symbolic link detected: \(path) points to \(result)")
                }
            } catch {}
        }

        return (true, "")
    }

    private static func OThGT3qQBZFjsCltEl46n2h2EpjcD8cy() -> CheckResult {

        let suspiciousLibraries = [
            "SubstrateLoader.dylib",
            "SSLKillSwitch2.dylib",
            "SSLKillSwitch.dylib",
            "MobileSubstrate.dylib",
            "TweakInject.dylib",
            "CydiaSubstrate",
            "cynject",
            "CustomWidgetIcons",
            "PreferenceLoader",
            "RocketBootstrap",
            "WeeLoader",
            "/.file", // HideJB (2.1.1) changes full paths of the suspicious libraries to "/.file"
            "libhooker",
            "SubstrateInserter",
            "SubstrateBootstrap",
            "ABypass",
            "FlyJB",
            "Substitute",
            "Cephei",
            "Electra",
        ]

        for libraryIndex in 0..<_dyld_image_count() {

            // _dyld_get_image_name returns const char * that needs to be casted to Swift String
            guard let loadedLibrary = String(validatingUTF8: _dyld_get_image_name(libraryIndex)) else { continue }

            for suspiciousLibrary in suspiciousLibraries {
                if loadedLibrary.lowercased().contains(suspiciousLibrary.lowercased()) {
                    return(false, "Suspicious library loaded: \(loadedLibrary)")
                }
            }
        }

        return (true, "")
    }
}
