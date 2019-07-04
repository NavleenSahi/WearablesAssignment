//
//  MapViewController.swift
//  FifaWWC2019
//
//  Created by Mithun Madhav on 30/06/19.
//  Copyright © 2019 Inommation. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView?
    
    var games: [Game]?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let initialLocation = CLLocationCoordinate2D(latitude: 45.7444917, longitude: 4.8720651)
        mapView?.setCenter(initialLocation, animated: false)
    }
    
    func reloadMap() {
        
        if games != nil {
            for game in games! {
                let annotation = MKPointAnnotation()
                annotation.title = game.stadium
                annotation.coordinate = CLLocationCoordinate2D(latitude: game.latitude, longitude: game.longitude)
                mapView?.addAnnotation(annotation)
            }
        }
    }
}
