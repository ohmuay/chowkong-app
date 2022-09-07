const fs = require("fs");

module.exports = ({ env }) => ({
  connection: {
    client: "postgres",
    connection: {
      host: env("DATABASE_HOST"),
      port: env.int("DATABASE_PORT"),
      database: env("DATABASE_NAME"),
      user: env("DATABASE_USERNAME"),
      password: env("DATABASE_PASSWORD"),
      ssl: {
        ca: fs.readFileSync(`${__dirname}/ca-certificate.crt`).toString(),
      },
    },
    debug: false,
  },
});
