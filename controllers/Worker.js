import Worker from "../models/WorkerModel.js";

export const getWorker = async (req, res) => {
  try {
    const response = await Worker.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getWorkerById = async (req, res) => {
  try {
    const response = await Worker.findOne({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createWorker = async (req, res) => {
  try {
    await Worker.create(req.body);
    res.status(201).json({ msg: "Worker Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updateWorker = async (req, res) => {
  try {
    await Worker.update(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Worker Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteWorker = async (req, res) => {
  try {
    await Worker.destroy({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "Worker Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};
