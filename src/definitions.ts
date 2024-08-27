export interface ipmacPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
