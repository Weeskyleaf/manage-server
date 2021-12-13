const express = require('express');
const userRouter = require('./routes/travel/user');
const contactRouter = require('./routes/travel/contact');
const servicesRouter = require('./routes/travel/services');
const servicesOfficialRouter = require('./routes/travel/services_official');
const employeeRouter = require('./routes/travel/employee');
const lineRouter = require('./routes/travel/line');

/* 服务器实例以及数据库配置 */
const app = express();

/* 为该路由设置根url部分 */
app.use('/travel/user', userRouter);
app.use('/travel/contact', contactRouter);
app.use('/travel/services', servicesRouter);
app.use('/travel/services_official', servicesOfficialRouter);
app.use('/travel/employee', employeeRouter);
app.use('/travel/line', lineRouter);

/* 使用中间件进行post参数解析 */
// app.use(bodyParser.urlencoded());
// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({
//     extended: true
// }));

/* 启动服务 */
let server = app.listen(3055, 'localhost', () => {
    console.log("服务器开始监听3055端口...");
});