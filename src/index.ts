import { registerPlugin } from '@capacitor/core';

import type { ipmacPlugin } from './definitions';

const ipmac = registerPlugin<ipmacPlugin>('ipmac', {
  web: () => import('./web').then(m => new m.ipmacWeb()),
});

export * from './definitions';
export { ipmac };
