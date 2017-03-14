//
//  FlightRowController.swift
//  AirAber
//
//  Created by DALIBON Maxime on 14/03/2017.
//  Copyright © 2017 Mic Pringle. All rights reserved.
//

import WatchKit

class FlightRowController: NSObject {
    
    @IBOutlet var separator: WKInterfaceSeparator!
    @IBOutlet var originLabel: WKInterfaceLabel!
    @IBOutlet var destinationLabel: WKInterfaceLabel!
    @IBOutlet var flightNumberLabel: WKInterfaceLabel!
    @IBOutlet var statusLabel: WKInterfaceLabel!
    @IBOutlet var planeImage: WKInterfaceImage!

    var flight: Flight? {
        // 2
        didSet {
            // 3
            if let flight = flight {
                // 4
                originLabel.setText(flight.origin)
                destinationLabel.setText(flight.destination)
                flightNumberLabel.setText(flight.number)
                // 5
                if flight.onSchedule {
                    statusLabel.setText("On Time")
                } else {
                    statusLabel.setText("Delayed")
                    statusLabel.setTextColor(UIColor.red)
                }
            }
        }
    }
    
}
