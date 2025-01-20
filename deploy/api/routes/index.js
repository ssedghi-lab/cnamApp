module.exports = app => {  
  require("./user.routes")(app);
  require("./product.routes")(app);
}
