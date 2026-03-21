import express, { type Express } from "express";
import cors from "cors";
import type { IncomingMessage, ServerResponse } from "http";
import pinoHttpLogger from "pino-http";
import router from "./routes/index.js";
import { logger } from "./lib/logger.js";

const app: Express = express();

const loggerMiddleware = pinoHttpLogger({
  logger,
  serializers: {
    req(req: IncomingMessage) {
      return {
        id: (req as any).id,
        method: req.method,
        url: req.url?.split("?")[0],
      };
    },
    res(res: ServerResponse) {
      return {
        statusCode: res.statusCode,
      };
    },
  },
});

app.use(loggerMiddleware);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", router);

export default app;
