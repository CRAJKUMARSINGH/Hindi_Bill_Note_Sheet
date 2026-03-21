import express, { type Express } from "express";
import cors from "cors";
import router from "./routes";
import { logger } from "./lib/logger";

// @ts-ignore - pino-http has type definition issues in build environments
import pinoHttp from "pino-http";

const app: Express = express();

app.use(
  // @ts-ignore - type inference issue with pino-http v10
  pinoHttp({
    logger,
    serializers: {
      // @ts-ignore - implicit any due to parent type issue
      req(req: any) {
        return {
          id: req.id,
          method: req.method,
          url: req.url?.split("?")[0],
        };
      },
      // @ts-ignore - implicit any due to parent type issue
      res(res: any) {
        return {
          statusCode: res.statusCode,
        };
      },
    },
  }),
);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", router);

export default app;
