import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Bonus = db.define(
  "bonus",
  {
    WORKER_REF_ID: DataTypes.STRING,
    BONUS_DATE: DataTypes.STRING,
    BONUS_AMOUNT: DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

export default Bonus;

(async () => {
  await db.sync();
})();
