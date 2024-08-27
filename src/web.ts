import { WebPlugin } from '@capacitor/core';

import type { ipmacPlugin } from './definitions';

export class ipmacWeb extends WebPlugin implements ipmacPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
