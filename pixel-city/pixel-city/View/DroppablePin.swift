//
//  DroppablePin.swift
//  pixel-city
//
//  Created by William Bodily on 3/28/19.
//  Copyright © 2019 William Bodily. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var id: String
    
    init(coordinate: CLLocationCoordinate2D, id: String) {
        self.coordinate = coordinate
        self.id = id
        super.init()
    }
    
}
