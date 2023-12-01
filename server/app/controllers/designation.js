const Designation = require("./../models").Designation;
const statusCodes = require("./../constants/statusCodes");
const messages = require("./../constants/messages");

const retrieve = (req, res) => {
    const id = req.params.id;
    Designation.findOne({
        where: {
            id: id
        }
    })
    .then(designation => {
        if(!designation) {
            res.status(statusCodes.NOT_FOUND).json({
                success:true,
                message: messages.ResourceNotFound
            })
        } else {
            res.status(statusCodes.OK).json({
                success: true,
                data: designation
            })
        }
    })
    .catch((err) => {
        res.status(statusCodes.BAD_REQUEST).json({
            success: false,
            err: err
        });
    });
}

const list = (req, res) => {
    Designation.findAll().then(designation=> {
        res.status(statusCodes.OK).json({
            success: true,
            data: designation
        });
    })
    .catch((err) => {
        res.status(statusCodes.BAD_REQUEST).json({
            success: false,
            err: err
        });
    });
}

module.exports = {
    retrieve,
    list
}