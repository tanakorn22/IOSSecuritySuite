//
//  ReverseEngineeringToolsChecker.swift
//  IOSSecuritySuite
//
//  Created by wregula on 24/04/2019.
//  Copyright © 2019 wregula. All rights reserved.
//

import Foundation
import MachO // dyld

internal class UeAhMwny7omNwI4VpcJgTqHK1URYge4M {

    static func HgFCc06ANygRYR1PvaXKsk3tEnLVElbn() -> Bool {
        return (OThGT3qQBZFjsCltEl46n2h2EpjcD8cy() || XkbSIPRH86i7DbxIfDo9HWHYdotcT4GX() || MCUutOS8F3r93Gz3JgLSpKewYEwJVfCD() || y3jbEWplf4MxR1oOGOsS6jW7qD9HOr8k())
    }

    private static func OThGT3qQBZFjsCltEl46n2h2EpjcD8cy() -> Bool {

        let suspiciousLibraries = [
            "FridaGadget",
            "frida", // Needle injects frida-somerandom.dylib
            "cynject",
            "libcycript"
        ]

        for libraryIndex in 0..<_dyld_image_count() {

            // _dyld_get_image_name returns const char * that needs to be casted to Swift String
            guard let loadedLibrary = String(validatingUTF8: _dyld_get_image_name(libraryIndex)) else { continue }

            for suspiciousLibrary in suspiciousLibraries {
                if loadedLibrary.lowercased().contains(suspiciousLibrary.lowercased()) {
                    return true
                }
            }
        }

        return false
    }

    private static func XkbSIPRH86i7DbxIfDo9HWHYdotcT4GX() -> Bool {

        let paths = [
            "/usr/sbin/frida-server"
        ]

        for path in paths {
            if FileManager.default.fileExists(atPath: path) {
                return true
            }
        }

        return false
    }

    private static func MCUutOS8F3r93Gz3JgLSpKewYEwJVfCD() -> Bool {

        let ports = [
            27042, // default Frida
            4444 // default Needle
        ]

        for port in ports {

            if xj47AYnQcNRnYf3qCAIoEwlLopEY98tw(port: port) {
                return true
            }
        }

        return false
    }

    private static func xj47AYnQcNRnYf3qCAIoEwlLopEY98tw(port: Int) -> Bool {

        func swapBytesIfNeeded(port: in_port_t) -> in_port_t {
            let littleEndian = Int(OSHostByteOrder()) == OSLittleEndian
            return littleEndian ? _OSSwapInt16(port) : port
        }

        var serverAddress = sockaddr_in()
        serverAddress.sin_family = sa_family_t(AF_INET)
        serverAddress.sin_addr.s_addr = inet_addr("127.0.0.1")
        serverAddress.sin_port = swapBytesIfNeeded(port: in_port_t(port))
        let sock = socket(AF_INET, SOCK_STREAM, 0)

        let result = withUnsafePointer(to: &serverAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                connect(sock, $0, socklen_t(MemoryLayout<sockaddr_in>.stride))
            }
        }
        
        defer {
            close(sock)
        }

        if result != -1 {
            return true // Port is opened
        }

        return false
    }
    
    // EXPERIMENTAL
    private static func y3jbEWplf4MxR1oOGOsS6jW7qD9HOr8k() -> Bool {
        var kinfo = kinfo_proc()
        var mib: [Int32] = [CTL_KERN, KERN_PROC, KERN_PROC_PID, getpid()]
        var size = MemoryLayout<kinfo_proc>.stride
        let sysctlRet = sysctl(&mib, UInt32(mib.count), &kinfo, &size, nil, 0)

        if sysctlRet != 0 {
            print("Error occured when calling sysctl(). This check may not be reliable")
        }
        
        return (kinfo.kp_proc.p_flag & P_SELECT) != 0
    }
}
