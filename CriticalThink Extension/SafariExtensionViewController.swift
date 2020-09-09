//
//  SafariExtensionViewController.swift
//  CriticalThink Extension
//
//  Created by Brandon Main on 9/9/20.
//  Copyright © 2020 Brandon Main. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
