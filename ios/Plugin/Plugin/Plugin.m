#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(GeofenceTracker, "GeofenceTracker",
           CAP_PLUGIN_METHOD(registerLocation, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(unregisterLocation, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getTrackedPresences, CAPPluginReturnPromise);
)
