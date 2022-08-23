import express from "express";
import {
  getWorker,
  getWorkerById,
  createWorker,
  updateWorker,
  deleteWorker,
} from "../controllers/Worker.js";

const router = express.Router();

router.get("/worker", getWorker);
router.get("/worker/:id", getWorkerById);
router.post("/worker", createWorker);
router.patch("/worker/:id", updateWorker);
router.delete("/worker/:id", deleteWorker);

export default router;
