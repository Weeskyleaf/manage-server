const express = require('express'), mysql = require('mysql');
const app = express(), connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '123456',
    database: 'travelwebsite'
});

/* 数据库连接 */
connection.connect();

/* 登录，即查询单个用户是否存在 */
app.get('/login', function (request, response) {
    console.log('Log: 管理员进行登录' + ' ---- ' + new Date().toLocaleString('chinese',{ hour12: false }));
    const user = request.query;
    const username = user.username, password = user.password;
    if (username != '' && password != '') {
        connection.query(`select * from backstage_user where username='${username}' and password='${password}'`, function (err, res) {
            if (err) {
                // 发送回错误数据
                response.json({
                    status: 1,
                    msg: err.sqlMessage
                })
            } else {
                if (res.length > 0) {
                    // 发送回正确数据
                    response.json({
                        status: 0,
                        msg: '登录成功!',
                        res: res
                    });
                } else response.json({status: 1, msg: '用户名或密码有误!'});
            }
        });
    } else response.json({status: 1, msg: '用户名或密码存在为空!'});
});

module.exports = app;