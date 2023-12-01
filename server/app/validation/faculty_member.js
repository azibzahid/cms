const Joi = require('joi');

module.exports = (faculty_member, update, login) => {
    let schema = Joi.object({
        faculty_id: Joi.number().required(),
        fname: Joi.string().min(3).max(30).required(),
        lname: Joi.string().min(3).max(30).required(),
        gender: Joi.string().min(1).max(1),
        phone: Joi.string().min(4).max(15),
        email: Joi.string().min(5).max(50).required().email(),
        password: Joi.string().min(5).max(255).required(),
        dob: Joi.date().less('now').required(),
        address: Joi.string().min(3).max(255),
        desg_id: Joi.number().required()
    });

    if (update) {
        schema = Joi.object({
            faculty_id: Joi.number(),
            fname: Joi.string().min(3).max(30),
            lname: Joi.string().min(3).max(30),
            gender: Joi.string().min(1).max(1),
            phone: Joi.string().min(4).max(15),
            email: Joi.string().min(5).max(50).email(),
            password: Joi.string().min(5).max(255),
            dob: Joi.date().less('now'),
            address: Joi.string().min(3).max(255),
            desg_id: Joi.number()
        });
    } else if (login) {
        schema = Joi.object({
            email: Joi.string().min(5).max(50).required().email(),
            password: Joi.string().min(5).max(255).required()
        });
    }

    return schema.validate(faculty_member);
}