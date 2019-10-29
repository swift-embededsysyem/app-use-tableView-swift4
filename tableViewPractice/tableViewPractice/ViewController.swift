//
//  ViewController.swift
//  tableViewPractice
//
//  Created by akbar  Rizvi on 1/2/19.
//  Copyright © 2019 akbar  Rizvi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBAction func directionButton(_ sender: UIButton) {
       // def destitination
        let latitude:CLLocationDegrees =  37.442146
        let longitude:CLLocationDegrees = -122.142504
        
        let regionDistance:CLLocationDistance = 1000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate:coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "silicon Valley"
        mapItem.openInMaps(launchOptions:options)
    }
    
    
    
    let planets = ["venus","pluto","sun","mars","earth"]
    
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return (planets.count)
       
    }
        
        
        public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! paTableViewCell
            
            cell.myImage.image = UIImage(named: (planets[indexPath.row]+".jpg"))
            
            cell.mylabel.text = planets[indexPath.row]
            return (cell)
        }
        
    
    
    
    
  

 override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

override func didReceiveMemoryWarning () {
    
super.didReceiveMemoryWarning()
    
}





}
