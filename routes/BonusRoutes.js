import express from "express";
import {
  getBonus,
  getBonusById,
  createBonus,
  updateBonus,
  deleteBonus,
} from "../controllers/Bonus.js";

const router = express.Router();

router.get("/bonus", getBonus);
router.get("/bonus/:id", getBonusById);
router.post("/bonus", createBonus);
router.patch("/bonus/:id", updateBonus);
router.delete("/bonus/:id", deleteBonus);

export default router;
