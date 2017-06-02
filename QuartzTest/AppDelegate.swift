//
//  AppDelegate.swift
//  QuartzTest
//
//  Created by Hunter Stanton on 6/2/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    
    /// Determines whether or not the application should terminate when the last open window is closed.
    ///
    /// - Returns: Whether or not it should terminate.
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        
        // Terminate our app when all opened windows are closed
        return true
        
    }


}

