class Injector {
  private readonly services: Object = {};

  public register(identifier: string, service: Object) {
    if (
      typeof identifier === 'string' &&
      this.services.hasOwnProperty(identifier) === false &&
      typeof service === 'object' &&
      service !== null
    ) {
      this.services[identifier] = service;
    } else {
      throw new Error(`The service '${identifier}' could not registered!`);
    }
  }

  public get(identifier: string): any {
    if (
      typeof identifier === 'string' &&
      this.services.hasOwnProperty(identifier) === true &&
      typeof this.services[identifier] === 'object' &&
      this.services[identifier] !== null
    ) {
      return this.services[identifier];
    } else {
      throw new Error(`The service '${identifier}' is not registered!`);
    }
  }
}

export const DI: Injector = new Injector();
