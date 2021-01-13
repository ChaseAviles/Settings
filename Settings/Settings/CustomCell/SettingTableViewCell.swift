//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Johnathan Aviles on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

//BOSS///////////////////
// Step 1: create the protocol
protocol SettingCellDelegate: AnyObject {
    // Step 1.5: state what the boss can do
    func settingSwitchToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //Step 2: set the delegat - Who its delegate (employee) is/////////////////
    weak var delegate: SettingCellDelegate?
    
    // Mark: - Actions
    @IBAction func settingSwitchToggle(_ sender: Any) {
        //Step 3: communicate to delegat (employee) instruction
        delegate?.settingSwitchToggled(cell: self)
        
    }
    
    
    
    // Mark: - Helper Functions
    func updateViews(setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        if setting.isOn {
            self.backgroundColor = .cyan
        }else {
            backgroundColor = .white
        }
    }
}
