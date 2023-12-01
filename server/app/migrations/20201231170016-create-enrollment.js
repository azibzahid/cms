'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Enrollments', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        autoIncrement: true
      },
      reg_no: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      section_id: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      grade: {
        type: Sequelize.STRING
      },
      academic_year: {
        type: Sequelize.INTEGER,
        allowNull: false
      },
      date_enrolled: {
        type: Sequelize.DATE,
        allowNull: false
      },
      semester: {
        type: Sequelize.STRING,
        allowNull: false
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Enrollments');
  }
};