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

/* 查询所有攻略游记申请信息 */
app.get('/listAll', function (request, response) {
    console.log('Log: 管理员查询所有攻略游记申请信息' + ' ---- ' + new Date().toLocaleString('chinese',{ hour12: false }));
    const sqlStr = `select * from travel_services`;
    connection.query(sqlStr, function (err, res) {
        if (err) {
            console.log(err);
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
                    msg: '查询成功!',
                    res: res
                });
            } else response.json({status: 1, msg: '暂无数据!'});
        }
    });
});

/* 修改一条攻略游记申请信息 */
app.get('/update', function (request, response) {
    console.log('Log: 管理员修改一条攻略游记申请信息' + ' ---- ' + new Date().toLocaleString('chinese',{ hour12: false }));
    console.log(request.query);
    let req = request.query;
    // 将ID转换为数字类型
    req.CID = Number(req.CID);
    const sqlStr = `update travel_services set sname='${req.sname}', semail='${req.semail}', title='${req.title}', content='${req.content}', classify='${req.classify}', isHot=${Number(req.isHot)} where SID=${req.SID}`;
    connection.query(sqlStr, function (err, res) {
        if (err) {
            console.log(err);
            response.json({
                status: 1,
                msg: err.sqlMessage
            });
        } else {
            // 通过修改后的信息来判断是否修改成功
            if (res.message == '(Rows matched: 0  Changed: 0  Warnings: 0') response.json({status: 1, msg: '修改失败，数据不存在!'});
            else if (res.message == '(Rows matched: 1  Changed: 1  Warnings: 0'){
                response.json({
                    status: 0,
                    msg: '修改成功!',
                    res: res
                });
            } else response.json({status: 1, msg: '修改失败!'});
        }
    });
})

/* 删除一条攻略游记申请信息 */
app.get('/delete', function (request, response) {
    console.log('Log: 管理员删除一条攻略游记申请信息' + ' ---- ' + new Date().toLocaleString('chinese',{ hour12: false }));
    console.log(request.query);
    let req = request.query;
    // 将ID转换为数字类型
    req.SID = Number(req.SID);
    const sqlStr = `delete from travel_services where SID=${req.SID}`;
    connection.query(sqlStr, function (err, res) {
        if (err) {
            console.log(err);
            response.json({
                status: 1,
                msg: err.sqlMessage
            });
        } else {
            response.json({
                status: 0,
                msg: '删除成功!',
                res: res
            });
        }
    });
});

/* 删除多条攻略游记申请信息 */
app.get('/deleteMultiple', function (request, response) {
    console.log('Log: 管理员删除多条攻略游记申请信息' + ' ---- ' + new Date().toLocaleString('chinese',{ hour12: false }));
    console.log(request.query);
    let req = request.query;
    const sqlStr = `delete from travel_services where SID in (${req.SID})`;
    connection.query(sqlStr, function (err, res) {
        if (err) {
            console.log(err);
            response.json({
                status: 1,
                msg: err.sqlMessage
            });
        } else {
            response.json({
                status: 0,
                msg: '删除成功!',
                res: res
            });
        }
    });
});

module.exports = app;