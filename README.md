# aliyundrive

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/kindao11/aliyunpan-heroku)

### 获取 refresh_token
* 自动获取: 登录[阿里云盘](https://www.aliyundrive.com/drive/)后，控制台粘贴 `JSON.parse(localStorage.token).refresh_token`
![](https://user-images.githubusercontent.com/12248888/150632769-ea6b7a0f-4170-44d6-bafb-92b2a7c1726b.png)

* 手动获取: 登录[阿里云盘](https://www.aliyundrive.com/drive/)后，可以在开发者工具 ->
Application -> Local Storage 中的 `token` 字段中找到。  
注意：不是复制整段 JSON 值，而是 JSON 里 `refresh_token` 字段的值，如下图所示红色部分：
![refresh token](./doc/refresh_token.png)
