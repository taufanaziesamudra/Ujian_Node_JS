import express from "express";
import {
  getTitle,
  getTitleById,
  createTitle,
  updateTitle,
  deleteTitle,
} from "../controllers/Title.js";

const router = express.Router();

router.get("/title", getTitle);
router.get("/title/:id", getTitleById);
router.post("/title", createTitle);
router.patch("/title/:id", updateTitle);
router.delete("/title/:id", deleteTitle);

export default router;
