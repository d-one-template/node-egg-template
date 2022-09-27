# hackernews-async-ts

[Hacker News](https://news.ycombinator.com/) showcase using typescript && egg

## QuickStart

### Development

```bash
$ npm i
$ npm run dev
$ open http://localhost:7001/
```

Don't tsc compile at development mode, if you had run `tsc` then you need to `npm run clean` before `npm run dev`.

### Deploy

```bash
$ npm run tsc
$ npm start
```

### Npm Scripts

- Use `npm run lint` to check code style
- Use `npm test` to run unit test
- se `npm run clean` to clean compiled js at development mode once

### Requirement

- Node.js 8.x
- Typescript 2.8+

## docker

需要使用模版的 docker 部署能力请阅读该文档片段

docker 文件分为两个, `docker-compose` 文件提供项目能力 `docker-compose-base` 提供数据库与redis能力，如需用到请先修改两份文件中的 `networks` 修改成新项目的名称。然后修改 `container_name` 字段，该字段主要提供数据库连接别名，修改之后需要在 config 中配置数据库的连接与使用。

更多请参考 :
[sequelize](https://www.eggjs.org/zh-CN/tutorials/sequelize)
[config 配置](https://www.eggjs.org/zh-CN/basics/config) 

docker 部署流程请参阅文档 https://dev-one.cn/#/zh-cn/devops/docker

