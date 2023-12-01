'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Faculty_Member extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Faculty_Member.init({
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      primaryKey: true,
      autoIncrement: true
    },
    fname: {
      type: DataTypes.STRING,
      allowNull: false
    },
    lname: {
      type: DataTypes.STRING,
      allowNull: false
    },
    phone: {
      type: DataTypes.STRING
    },
    gender: {
      type: DataTypes.STRING
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        isEmail: true
      }
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [5, 1024]
      }
    },
    dob: {
      type: DataTypes.DATE,
      allowNull: false
    },
    address: {
      type: DataTypes.STRING
    },
    faculty_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    desg_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'Faculty_Member',
  });
  Faculty_Member.associate = (models) => {
    // define association here
    Faculty_Member.belongsTo(models.Faculty, {
      foreignKey: 'faculty_id'
    });
    Faculty_Member.hasMany(models.Section, {
      foreignKey: 'faculty_member_id',
      as: 'sections'
    });
    Faculty_Member.hasOne(models.Designation, {
      foreignKey: 'id'
    });
  };
  return Faculty_Member;
};