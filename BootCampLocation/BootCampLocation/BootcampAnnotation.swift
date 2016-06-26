//
//  BootcampAnnotation.swift
//  BootCampLocation
//
//  Created by Minh Thang Vu on 6/26/16.
//  Copyright © 2016 Minh Thang Vu. All rights reserved.
//

import MapKit
import Foundation

class BootcampAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}