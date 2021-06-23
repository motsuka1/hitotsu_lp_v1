# hitotsu_lp_v1

# 開発環境立ち上げ
- docker-compose build
- docker-compose up

ターミナルの別タブを開いてコンテナに入る
- docker exec -it hitotsu_lp_v1_gatsby /bin/sh

starterをインストール
- gatsby new lp https://github.com/EmaSuriano/gatsby-starter-mate

### エラー
```
Cloning into 'lp'...
remote: Enumerating objects: 32, done.
remote: Counting objects: 100% (32/32), done.
remote: Compressing objects: 100% (29/29), done.
remote: Total 32 (delta 0), reused 17 (delta 0), pack-reused 0
success Created starter directory layout
info Installing packages...

npm ERR! code ERESOLVE
npm ERR! ERESOLVE unable to resolve dependency tree
npm ERR! 
npm ERR! Found: react@17.0.2
npm ERR! node_modules/react
npm ERR!   react@"^17.0.2" from the root project
npm ERR!   peer react@"^16.4.2 || ^17.0.0" from gatsby@2.32.13
npm ERR!   node_modules/gatsby
npm ERR!     gatsby@"^2.32.12" from the root project
npm ERR!     peer gatsby@"^2.0.0" from gatsby-plugin-google-analytics@2.11.0
npm ERR!     node_modules/gatsby-plugin-google-analytics
npm ERR!       gatsby-plugin-google-analytics@"^2.11.0" from the root project
npm ERR!     1 more (gatsby-theme-mate)
npm ERR!   2 more (react-dom, gatsby-plugin-google-analytics)
npm ERR! 
npm ERR! Could not resolve dependency:
npm ERR! peer react@"15.x || 16.x || 16.4.0-alpha.0911da3" from @reach/router@1.3.4
npm ERR! node_modules/gatsby/node_modules/@reach/router
npm ERR!   @reach/router@"^1.3.4" from gatsby@2.32.13
npm ERR!   node_modules/gatsby
npm ERR!     gatsby@"^2.32.12" from the root project
npm ERR!     2 more (gatsby-plugin-google-analytics, gatsby-theme-mate)
npm ERR! 
npm ERR! Fix the upstream dependency conflict, or retry
npm ERR! this command with --force, or --legacy-peer-deps
npm ERR! to accept an incorrect (and potentially broken) dependency resolution.
npm ERR! 
npm ERR! See /Users/masakiotsuka/.npm/eresolve-report.txt for a full report.

npm ERR! A complete log of this run can be found in:

 ERROR 

Command failed with exit code 1: npm install



  Error: Command failed with exit code 1: npm install
  
  - error.js:56 makeError
    [lib]/[gatsby-cli]/[execa]/lib/error.js:56:11
  
  - index.js:114 handlePromise
    [lib]/[gatsby-cli]/[execa]/index.js:114:26
  
  - task_queues:96 processTicksAndRejections
    node:internal/process/task_queues:96:5
  
  - init-starter.js:135 install
    [lib]/[gatsby-cli]/lib/init-starter.js:135:7
  
  - init-starter.js:202 clone
    [lib]/[gatsby-cli]/lib/init-starter.js:202:3
  
  - init-starter.js:343 initStarter
    [lib]/[gatsby-cli]/lib/init-starter.js:343:5
  
  - create-cli.js:494 
    [lib]/[gatsby-cli]/lib/create-cli.js:494:9
```

### 試した事 1
- cd lp
- npm install --legacy-peer-deps

#### エラー
```
npm ERR! cb() never called!

npm ERR! This is an error with npm itself. Please report this error at:
npm ERR!     <https://github.com/npm/cli/issues>

npm ERR! A complete log of this run can be found in:
npm ERR!     /root/.npm/_logs/2021-06-23T00_13_59_593Z-debug.log
```

### 試した事　1.1
- https://qiita.com/holdout0521/items/ebf836fc11e864177628　の記事の内容を試した

#### エラー
```
npm ERR! code ERESOLVE
npm ERR! ERESOLVE unable to resolve dependency tree
npm ERR! 
npm ERR! Found: react@17.0.2
npm ERR! node_modules/react
npm ERR!   react@"^17.0.2" from the root project
npm ERR!   peer react@">=16.14.0" from react-awesome-reveal@3.8.1
npm ERR!   node_modules/react-awesome-reveal
npm ERR!     react-awesome-reveal@"^3.7.0" from gatsby-theme-mate@1.2.0
npm ERR!     node_modules/gatsby-theme-mate
npm ERR!       gatsby-theme-mate@"^1.0.0" from the root project
npm ERR!   10 more (react-dom, react-headroom, react-helmet, ...)
npm ERR! 
npm ERR! Could not resolve dependency:
npm ERR! peer react@"15.x || 16.x || 16.4.0-alpha.0911da3" from @reach/router@1.3.4
npm ERR! node_modules/gatsby/node_modules/@reach/router
npm ERR!   @reach/router@"^1.3.4" from gatsby@2.32.13
npm ERR!   node_modules/gatsby
npm ERR!     gatsby@"^2.32.12" from the root project
npm ERR!     2 more (gatsby-plugin-google-analytics, gatsby-theme-mate)
npm ERR! 
npm ERR! Fix the upstream dependency conflict, or retry
npm ERR! this command with --force, or --legacy-peer-deps
npm ERR! to accept an incorrect (and potentially broken) dependency resolution.
npm ERR! 
npm ERR! See /root/.npm/eresolve-report.txt for a full report.

npm ERR! A complete log of this run can be found in:
npm ERR!     /root/.npm/_logs/2021-06-23T00_39_51_396Z-debug.log

```

参考：https://github.com/gatsbyjs/gatsby/issues/27548

