import Title from "../models/TitleModel.js";

export const getTitle = async (req, res) => {
  try {
    const response = await Title.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getTitleById = async (req, res) => {
  try {
    const response = await Title.findOne({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createTitle = async (req, res) => {
  try {
    await Title.create(req.body);
    res.status(201).json({ msg: "Title Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updateTitle = async (req, res) => {
  try {
    await Title.update(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Title Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteTitle = async (req, res) => {
  try {
    await Title.destroy({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Title Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};
