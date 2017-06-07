//
//  ViewController.swift
//  Tap
//
//  Created by Kyle McAlpine on 07/06/2017.
//  Copyright © 2017 Kyle McAlpine. All rights reserved.
//

import UIKit
import CoreNFC

class ViewController: UIViewController {
    var session: NFCNDEFReaderSession?
    
    override init(nibName: String?, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
        initialise()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialise()
    }
    
    func initialise() {
        session = NFCNDEFReaderSession(delegate: self, queue: DispatchQueue.global(), invalidateAfterFirstRead: false)
        session?.begin()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }


}

extension ViewController: NFCNDEFReaderSessionDelegate {
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print(error)
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        print(messages)
    }
}
