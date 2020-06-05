const SimpleStorage = artifacts.require("SimpleStorage");
const Banque = artifacts.require("Banque");
const Token = artifacts.require("Token");
const JeuneDiplome = artifacts.require("JeuneDiplome");

module.exports = function (deployer) {
  deployer.deploy(SimpleStorage);
};
