//
//  SettingController.swift
//  Settings
//
//  Created by Johnathan Aviles on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    static let shared = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let apps = Setting(name: "Apps", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return [music, apps, books]
    }()
    
    func toggleIsOn(setting: Setting) {
        if setting.isOn == true {
            setting.isOn = false
        }else {
            setting.isOn = true
        }
        
        // setting.isOn = !setting.isOn
        // setting.isOn.toggle()
    }
}
