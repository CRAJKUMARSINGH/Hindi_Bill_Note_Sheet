import express, { type Express } from "express";
import cors from "cors";
import type { IncomingMessage, ServerResponse } from "http";
import pinoHttp, { type StdSerializers } from "pino-http";
import router from "./routes";
import { logger } from "./lib/logger";

const app: Express = express();

app.use(
  pinoHttp({
    logger,
    serializers: {
      req(req: IncomingMessage) {
        return {
          id: (req as any).id,
          method: req.method,
          url: req.url?.split("?")[0],
        } as const;
      },
      res(res: ServerResponse) {
        return {
          statusCode: res.statusCode,
        } as const;
      },
    },
  }) as express.RequestHandler,
);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", router);

export default app;
