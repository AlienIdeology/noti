//
//  AppDelegate.swift
//  noti
//
//  Created by Allen Liao on 3/6/22.
//

import Cocoa

//@main
class AppDelegate: NSObject, NSApplicationDelegate {

//    private var window: NSWindow!
    private var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        window = NSWindow(
//            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
//            styleMask: [.miniaturizable, .closable, .resizable, .titled],
//            backing: .buffered, defer: false)
//        window.center()
//        window.title = "No Storyboard Window"
//        window.makeKeyAndOrderFront(nil)
        
        // add status item
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        if let button = statusItem.button { // optional unwrapping of button
            button.image = NSImage(systemSymbolName: "1.circle", accessibilityDescription: "1")     // SF symbol
        }
        
        setupMenus()
    }
    
    // function to set up menubar icon
    func setupMenus() {
        let menu = NSMenu()
        
        let quit = NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        menu.addItem(quit)
        
        statusItem.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

