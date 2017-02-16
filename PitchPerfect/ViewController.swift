//
//  ViewController.swift
//  PitchPerfect
//
//  Created by David Hurd on 2/13/17.
//  Copyright © 2017 Imagitale Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var cancelRecordingButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        cancelRecordingButton.isEnabled = false
    }


    @IBAction func recordAudio(_ sender: Any) {
        cancelRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        recordingLabel.text = "Recording in progress"
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        cancelRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record"
    }
}

