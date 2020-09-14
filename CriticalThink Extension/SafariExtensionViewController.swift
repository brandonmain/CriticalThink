//
//  SafariExtensionViewController.swift
//  CriticalThink Extension
//
//  Created by Brandon Main on 9/9/20.
//  Copyright © 2020 Brandon Main. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    
    @IBOutlet weak var urlLabel: NSTextField!
    @IBOutlet weak var urlDecision: NSTextField!
    @IBOutlet weak var titleLabel: NSTextField!
    @IBOutlet weak var titleScore: NSTextField!
    @IBOutlet weak var contentLabel: NSTextField!
    @IBOutlet weak var contentScore: NSTextField!
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:475)
        return shared
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        urlLabel.stringValue = "\(FakeboxModel.shared.domain)"
        urlDecision.stringValue = "\(FakeboxModel.shared.domainCategory)"
        titleLabel.stringValue = "\(FakeboxModel.shared.title)"
        titleScore.stringValue = "\(FakeboxModel.shared.titleScore)"
        contentLabel.stringValue = "\(FakeboxModel.shared.content)"
        contentScore.stringValue = "\(FakeboxModel.shared.contentScore)"
    }

    func updateView(with data: [String : Any]?) {
        
    }
}
