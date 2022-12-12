const functions = require("firebase-functions");

const mysql = require("mysql");
const dbConfig = require("dotenv").config().parsed;

const con = mysql.createConnection({
  host: dbConfig.DB_HOST,
  user: dbConfig.DB_USER,
  password: dbConfig.DB_PASS,
  database: dbConfig.DB_DATABASE,
});
const express = require("express");
const bodyParser = require("body-parser");
const app = express();

app.use(express.static("public"));
app.set("view engine", "ejs");

app.use(bodyParser.urlencoded({ extended: false }));

con.connect((err) => {
  if (err) throw err;
});

app.get("/admin", (req, res, next) => {
  res.render("template", {
    body: "admin/index",
    title: "Login Page",
  });
});

// app.get("/api/product", (req, res) => {
//   var query = "SELECT product_id, product_name FROM product";
//   con.query(query, (err, result) => {
//     if (err) throw err;
//     const response = {
//       code: 200,
//       status: "OK",
//       data: result,
//     };

//     res.json(response);
//   });
// });

// app.get("/api/script", (req, res) => {
//   var query = `SELECT * FROM script WHERE product_id=${req.query.product}`;
//   con.query(query, (err, result) => {
//     if (err) throw err;
//     const response = {
//       code: 200,
//       status: "OK",
//       data: result[0],
//     };
//     res.json(response);
//   });
// });

// app.put("/api/tag_counter", (req, res) => {
//   const body = req.body;
//   const scriptId = body.script_id;
//   var tag = body.tag;
//   tag = tag.replace(/^\s+|\s+$|\s+(?=\s)/g, "");

//   const getHashtag = (err, result) => {
//     if (err) throw err;
//     const response = {
//       code: 200,
//       status: "OK",
//       data: {
//         hashtagId: result[0].hashtag_id,
//         sentAmount: result[0].sent_amount,
//       },
//     };
//     res.json(response);
//   };

//   var query = `SELECT * FROM hashtag WHERE script_id=${scriptId} AND tag='${tag}'`;
//   con.query(query, (err, result) => {
//     if (err) throw err;
//     if (!result[0]) {
//       con.query(
//         `INSERT INTO hashtag(script_id, sent_amount, tag) values(${scriptId}, 0, '${tag}')`
//       );
//       con.query(query, getHashtag);
//     } else {
//       getHashtag(err, result);
//     }
//   });
// });

// app.post("/api/active_number", (req, res) => {
//   const body = req.body;

//   var query = `INSERT INTO active_number(phone_number, user_id, date_send, product_id) values('${body.phoneNumber}','${body.sentBy}','${body.dateSend}','${body.productId}')`;
//   con.query(query, (err, result) => {
//     if (err) throw err;
//     res.json({
//       code: 200,
//       status: "OK",
//       message: "Document Succesfully Writen",
//     });
//   });
//   con.query(
//     `UPDATE hashtag SET sent_amount=${body.sentAmountPlusOne} WHERE hashtag_id=${body.hashtagId}`
//   );
// });

const port = 80;
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

// exports.app = functions.https.onRequest(app);
