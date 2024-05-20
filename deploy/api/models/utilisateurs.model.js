module.exports = (sequelize, Sequelize) => {
  const Utilisateurs = sequelize.define("Utilisateurs", {

   id: {
        type: Sequelize.STRING,
        primaryKey:true,
        allowNull: false
      },  
    nom: {
      type: Sequelize.STRING,
      allowNull: false
    },
    prenom: {
      type: Sequelize.STRING
      // allowNull defaults to true
    },    
    adresse: {
        type: Sequelize.STRING,
    },
    codepostal: {
        type: Sequelize.STRING,
    },
    ville: {
        type: Sequelize.STRING,
    },
    email: {
        type: Sequelize.STRING,
    },
    sexe: {
        type: Sequelize.STRING,
    },
    login: {
        type: Sequelize.STRING,
        allowNull: false
    },
    pass: {
        type: Sequelize.STRING,
    },
    telephone: {
        type: Sequelize.STRING,
    },
 });
return Utilisateurs;
};
