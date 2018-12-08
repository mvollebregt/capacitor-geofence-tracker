import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(GeofenceTracker)
public class GeofenceTracker: CAPPlugin {
   
    
//    registerLocation(location: GeofenceLocation) : void;
//    unregisterLocation(id: any): void;
//    getTrackedLocations() : GeofencePresence[];
    
    @objc func registerLocation(_ call: CAPPluginCall) {
        
        guard
            let id = call.getString("id"),
            let latitude = call.getDouble("latitude"),
            let longitude = call.getDouble("longitude"),
            let radius = call.getDouble("radius")
            else {
                call.error("id, latitude, logitude and radius must not be nil")
                return
        }
        
        NSLog("Registering location %s %d %d %d", id, latitude, longitude, radius)
        
        call.success()
    }
    
    @objc func unregisterLocation(_ call: CAPPluginCall) {
        guard
            let id = call.getString("id")
            else {
                call.error("id must not be nil")
                return
        }
        
        NSLog("Unregistering location %s", id)
        
        call.success()
    }
    
    @objc func getTrackedPresences(_ call: CAPPluginCall) {
        
        NSLog("Getting tracked presences")
        
        call.success(["presences": [
            "location": [
                "id": "somewhere",
                "latitude": 300.23,
                "longitude": 400.23,
                "radius": 2000.1,
            ],
            "start": "1976-07-13T23:05:01Z",
            "end": "2100-07-13T23:05:01Z"
        ]])
    }
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }
}
