import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Title = db.define(
  "title",
  {
    WORKER_REF_ID: DataTypes.STRING,
    WORKER_TITLE: DataTypes.STRING,
    AFFECTED_FROM: DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

export default Title;

(async () => {
  await db.sync();
})();
