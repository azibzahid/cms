'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Faculty extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Faculty.init({
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    location: {
      type: DataTypes.STRING
    },
    dean_id: {
      type: DataTypes.INTEGER
    },
    contact_phone: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    contact_email: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        isEmail: true
      }
    },
  }, {
    sequelize,
    modelName: 'Faculty',
  });
  Faculty.associate = (models) => {
    // define association here
    Faculty.hasMany(models.Student, {
      foreignKey: 'faculty_id',
      as: 'students'
    });
    Faculty.hasMany(models.Course, {
      foreignKey: 'faculty_id',
      as: 'courses'
    });
    Faculty.hasMany(models.Faculty_Member, {
      foreignKey: 'faculty_id',
      as: 'faculty_members'
    });
  };
  return Faculty;
};