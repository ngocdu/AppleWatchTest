//
//  InterfaceController.swift
//  watchTest WatchKit Extension
//
//  Created by framgia on 11/28/15.
//  Copyright © 2015 framgia. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController  {

    @IBOutlet var slider: WKInterfaceSlider!
    
    @IBOutlet var picker: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var pickerItems: [WKPickerItem] = []
        for i in 1...10 {
            let item = WKPickerItem()
            item.title = "Picker item \(i)"
            pickerItems.append(item)
        }
        self.picker!.setItems(pickerItems)
        // Configure interface objects here.
    }
    
    
    @IBAction func showAlertPressed() {
        let cancel = WKAlertAction(title: "Cancel", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
            
        })
        
        let action = WKAlertAction(title: "Action", style: WKAlertActionStyle.Default, handler: { () -> Void in
            
        })
        
        self.presentAlertControllerWithTitle("Alert", message: "Example watchOS 2 alert interface", preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert, actions: [cancel, action])
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        self.animateWithDuration(5) { () -> Void in
            self.slider.setHeight(0)
            self.slider.setAlpha(0)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
