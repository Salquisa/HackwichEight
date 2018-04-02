//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Scott Alquisa. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    //Set initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    //Set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 5000

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
        //part 7, step 4
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius,regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
            
            centerMapOnLocation(location: initialLocation)
            
            //create an Restaurant object and set all the argumnts to each of the three parameters
        let restaurantOne = Restaurant(title: "Kalapawai", type: "Kalapawai", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
            mapView.addAnnotation(restaurantOne)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

