declare module 'pino-http' {
  import { IncomingMessage, ServerResponse } from 'http';
  import { Logger } from 'pino';

  function pinoHttp(options?: any): (req: IncomingMessage, res: ServerResponse, next?: () => void) => void;

  export = pinoHttp;
}
