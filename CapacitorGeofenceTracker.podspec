
  Pod::Spec.new do |s|
    s.name = 'CapacitorGeofenceTracker'
    s.version = '0.0.1'
    s.summary = 'A plugin that records the user's presence at specified locations'
    s.license = 'MIT'
    s.homepage = 'https://github.com/mvollebregt/capacitor-geofence-tracker'
    s.author = 'Michel Vollebregt'
    s.source = { :git => 'https://github.com/mvollebregt/capacitor-geofence-tracker', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end