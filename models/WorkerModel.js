import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Worker = db.define(
  "worker",
  {
    WORKER_ID: DataTypes.STRING,
    FIRST_NAME: DataTypes.STRING,
    LAST_NAME: DataTypes.STRING,
    SALARY: DataTypes.STRING,
    JOINING_DATE: DataTypes.STRING,
    DEPARTMENT: DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

export default Worker;

(async () => {
  await db.sync();
})();
