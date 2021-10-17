//
//  MainMenuViewController.swift
//  Focus
//
//  Created by Ituriel Mejia on 10/10/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
//    let segues = ["mainToSimon", "mainToNumbers", "mainToPatterns", "mainToImpostor", "mainToLecture", "mainToZigzag",]

    @IBOutlet var games: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (isDeviceJailBroken()) {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                              UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
                          }
        }
    }
    
    @IBAction func playRandom(_ sender: Any) {
        performSegue(withIdentifier: "mainToInstructions", sender: games[Int.random(in: 0...5)])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gameView: UIView
        if sender is UITapGestureRecognizer {
            gameView = (sender as! UITapGestureRecognizer).view!
        } else {
            gameView = sender as! UIView
        }
        let instructionsVC = segue.destination as! HowToViewController
        if(gameView.tag == 0) {
            instructionsVC.gameSelected = 0
            return
        }
        if(gameView.tag == 1) {
            instructionsVC.gameSelected = 1
            return
        }
        if(gameView.tag == 2) {
            instructionsVC.gameSelected = 2
            return
        }
        if(gameView.tag == 3) {
            instructionsVC.gameSelected = 3
            return
        }
        if(gameView.tag == 4) {
            instructionsVC.gameSelected = 4
            return
        }
        if(gameView.tag == 5) {
            instructionsVC.gameSelected = 5
            return
        }
    }
    
    @IBAction func unwindToFirstViewController(_ sender: UIStoryboardSegue) {}
    
    //Security measure to check if the device is jail broken
    
    func isDeviceJailBroken() ->Bool {
        if access("/Applications/Cydia.app", F_OK) != -1 || access("/Applications/blackra1n.app", F_OK) != -1 || access("/Applications/FakeCarrier.app", F_OK) != -1 || access("/Applications/Icy.app", F_OK) != -1 || access("/Applications/IntelliScreen.app", F_OK) != -1 || access("/Applications/MxTube.app", F_OK) != -1 || access("/Applications/RockApp.app", F_OK) != -1 || access("/Applications/SBSettings.app", F_OK) != -1 || access("/Applications/WinterBoard.app", F_OK) != -1 || access("/Library/MobileSubstrate/MobileSubstrate.dylib", F_OK) != -1 || access("/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist", F_OK) != -1 || access("/Library/MobileSubstrate/DynamicLibraries/Veency.plist", F_OK) != -1 || access("/private/var/lib/apt", F_OK) != -1 || access("/private/var/lib/cydia", F_OK) != -1 || access("/private/var/mobile/Library/SBSettings/Themes", F_OK) != -1 || access("/private/var/stash", F_OK) != -1 || access("/private/var/tmp/cydia.log", F_OK) != -1 || access("/System/Library/LaunchDaemons/com.ikey.bbot.plist", F_OK) != -1 || access("/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist", F_OK) != -1 || access("/usr/bin/sshd", F_OK) != -1 || access("/usr/libexec/sftp-server", F_OK) != -1 || access("/usr/sbin/sshd", F_OK) != -1 || access("/bin/bash", F_OK) != -1 || access("/etc/apt", F_OK) != -1 {
            return true
        }
        return false
    }
    
}
