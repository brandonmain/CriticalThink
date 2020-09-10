//
//  SafariExtensionHandler.swift
//  CriticalThink Extension
//
//  Created by Brandon Main on 9/9/20.
//  Copyright © 2020 Brandon Main. All rights reserved.
//

import SafariServices

class SafariExtensionHandler: SFSafariExtensionHandler {
    
    override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]?) {
        // This method will be called when a content script provided by your extension calls safari.extension.dispatchMessage("message").
        if messageName == "ANALYZE" {
            analyzeMessage(message: userInfo)
        }
    }

    override func validateToolbarItem(in window: SFSafariWindow, validationHandler: @escaping ((Bool, String) -> Void)) {
        // This is called when Safari's state changed in some way that would require the extension's toolbar item to be validated again.
        validationHandler(true, "")
    }
    
    override func popoverViewController() -> SFSafariExtensionViewController {
        return SafariExtensionViewController.shared
    }
    
    
    override func popoverWillShow(in window: SFSafariWindow) {
        window.getActiveTab { (tab) in
            tab?.getActivePage(completionHandler: { (page) in
                page?.dispatchMessageToScript(withName: "GET", userInfo: nil)
            })
        }
    }
    
    private func analyzeMessage(message: [String : Any]?) {
        NSLog(message?["text"] as! String)
    }
}
