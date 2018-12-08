import {WebPlugin} from '@capacitor/core';

export class GeofenceTrackerWeb extends WebPlugin { // implements GeofenceTrackerPlugin {
  constructor() {
    super({
      name: 'GeofenceTracker',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return Promise.resolve({value: options.value});
  }
}

const GeofenceTracker = new GeofenceTrackerWeb();

export {GeofenceTracker};
