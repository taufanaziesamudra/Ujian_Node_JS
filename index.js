import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import db from "./config/Database.js";
import BonusRoutes from "./routes/BonusRoutes.js";
import TitleRoutes from "./routes/TitleRoutes.js";
import WorkerRoutes from "./routes/WorkerRoutes.js";
dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());
app.use(BonusRoutes);
app.use(TitleRoutes);
app.use(WorkerRoutes);

try {
  await db.authenticate();
  console.log("Database terkoneksi");
} catch (error) {
  console.log(error);
}

app.listen(5000, () => console.log("Server Up and Running..."));
