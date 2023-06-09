import express from "express";
import { Request, Response } from "express";

const app = express();

app.get("/", (req: Request, res: Response) =>
  res.send("Default route is working.")
);

app.listen(8000, () => {
  console.log("Server running in http://localhost:8000");
});
