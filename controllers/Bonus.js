import Bonus from "../models/BonusModel.js";

export const getBonus = async (req, res) => {
  try {
    const response = await Bonus.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getBonusById = async (req, res) => {
  try {
    const response = await Bonus.findOne({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createBonus = async (req, res) => {
  try {
    await Bonus.create(req.body);
    res.status(201).json({ msg: "Bonus Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updateBonus = async (req, res) => {
  try {
    await Bonus.update(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Bonus Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteBonus = async (req, res) => {
  try {
    await Bonus.destroy({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Bonus Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};
