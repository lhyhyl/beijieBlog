// const { Sequelize } = require("sequelize")

// const { MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DB } = require("../config/config.default")

// const seq = new Sequelize(MYSQL_DB, MYSQL_USER, MYSQL_PASSWORD, {
//   host: MYSQL_HOST,
//   dialect: "mysql",
//   timezone: "+08:00",
// })

// seq
//   .authenticate()
//   .then(() => {
//     console.log("数据库连接成功")
//   })
//   .catch(() => {
//     console.log("数据库连接失败")
//   })

// module.exports = seq
const { Sequelize } = require("sequelize");
const { MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DB } = require("../config/config.default");

const seq = new Sequelize(MYSQL_DB, MYSQL_USER, MYSQL_PASSWORD, {
  host: MYSQL_HOST,
  dialect: "mysql",
  timezone: "+08:00",
  dialectOptions: {
    socketPath: "/var/run/mysqld/mysqld.sock", // 指定 MySQL socket 路径，根据你的实际情况修改
  },
  define: {
    // 如果数据库中的表没有 createdAt 和 updatedAt 字段，可以将以下选项设为 false
    timestamps: true,
  },
  // 如果采用 'auth_socket' 身份验证插件，需要明确指定 operatorsAliases 为 false
  operatorsAliases: false,
});

seq
  .authenticate()
  .then(() => {
    console.log("数据库连接成功");
  })
  .catch((error) => {
    console.error("数据库连接失败", error);
  });

module.exports = seq;
