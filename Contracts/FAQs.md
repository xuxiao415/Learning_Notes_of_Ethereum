
## 2017-05-25
1.  js包管理工具有哪些，都有什么区别？

  比较流行的npm，bower，component. 现在比较常用的是npm，npm是随同NodeJS一起安装的包管理工具，能解决NodeJS代码部署上的很多问题，现在npm统一前后端只是时间问题。bower和component一般用于前端的模块化管理.[前端模块管理工具](http://www.ruanyifeng.com/blog/2014/09/package-management.html)

2. webpack

  webpack是近期最火的一款模块加载器兼打包工具，它能把各种资源，例如JS（含JSX）、coffee、样式（含less/sass）、图片等都作为模块来使用和处理。我们可以直接使用 require(XXX) 的形式来引入各模块，即使它们可能需要经过编译（比如JSX和sass），但我们无须在上面花费太多心思，因为 webpack 有着各种健全的加载器（loader）在默默处理这些事情.

3. 在一些开源框架中，dist文件夹是什么意思

  全称是distribution。 在某些框架中，因为开发和发布是的内容或者代码形式是不一样的（比如利用Grunt压缩等等)，这时候就需要一个存放最终发布版本的代码，这就是dist文件夹的用处

4. npm 安装参数中的 --save-dev 是什么意思

  当你为你的模块安装一个依赖模块时，正常情况下你得先安装他们（在模块根目录下npm install module-name），然后连同版本号手动将他们添加到模块配置文件package.json中的依赖里（dependencies）。

  -save和save-dev可以省掉你手动修改package.json文件的步骤。

  spm install module-name -save 自动把模块和版本号添加到dependencies部分

  spm install module-name -save-dve 自动把模块和版本号添加到devdependencies部分

  至于配置文件区分这俩部分， 是用于区别开发依赖模块和产品依赖模块.它们真正的区别是，npm自己的文档说dependencies是运行时依赖，devDependencies是开发时的依赖。即devDependencies 下列出的模块，是我们开发时用的，比如 我们安装 js的压缩包gulp-uglify 时，我们采用的是 “npm install –save-dev gulp-uglify ”命令安装，因为我们在发布后用不到它，而只是在我们开发才用到它。dependencies 下的模块，则是我们发布后还需要依赖的模块，譬如像jQuery库或者Angular框架类似的，我们在开发完后后肯定还要依赖它们，否则就运行不了。

  另外需要补充的是：
  正常使用npm install时，会下载dependencies和devDependencies中的模块，当使用npm install –production或者注明NODE_ENV变量值为production时，只会下载dependencies中的模块。

5. [webpack解惑：require的五种用法](https://www.cnblogs.com/laneyfu/p/6158715.html)

## 2017-05-25

## 2017-05-26

6. Invalid JASON RPC

## 2017-05-31

7. Everything in CryptoJS is big-endian.

8. [jquery中的event与originalEvent](http://www.jianshu.com/p/0c211d3ca896)

9. Uncaught RangeError: Maximum call stack size exceeded

可能是忘记调用event.stopPropagation()，它可以阻止事件的继续传播，在某些情况下可防止无限递归而导致浏览器崩溃

## 2017-06-01

10. 如何获取non-constant function的返回值？

目前还不支持获取non-constant function的返回值，想要获取返回值，可以通过event来解决[问题连接](https://ethereum.stackexchange.com/questions/3285/how-to-get-return-values-when-function-with-argument-is-called)

11. transaction receipt 是什么？

[https://ethereum.stackexchange.com/questions/6531/structure-of-a-transaction-receipt](https://ethereum.stackexchange.com/questions/6531/structure-of-a-transaction-receipt)

交易收据，交易的凭证，和transaction本身不同，数据结构不同。

transaction receipt 示例：
```
Result: {
    "blockHash": "0xe6b110c9167d9aabeb13b02a7b9358d879426474a79170403d67da33a391dbdc",
      "blockNumber": 665,
      "contractAddress": null,
      "cumulativeGasUsed": 68527,
      "from": "0x0fd8cd36bebcee2bcb35e24c925af5cf7ea9475d",
      "gasUsed": 68527,
      "logs": [
        {
          "address": "0x91067b439e1be22196a5f64ee61e803670ba5be9",
          "blockHash": "0xe6b110c9167d9aabeb13b02a7b9358d879426474a79170403d67da33a391dbdc",
          "blockNumber": 665,
          "data": "0x00000000000000000000000000000000000000000000000000000000576eca940000000000000000000000000fd8cd36bebcee2bcb35e24c925af5cf7ea9475d0100000000000000000000000000000000000000000000000000000000000000",
          "logIndex": 0,
          "topics": [
            "0x72d0d212148041614162a44c61fef731170dd7cccc35d1974690989386be0999"
          ],
          "transactionHash": "0xad62c939b2e865f13c61eebcb221d2c9737955e506b69fb624210d3fd4e0035b",
          "transactionIndex": 0
        }
      ],
      "root": "7583254379574ee8eb2943c3ee41582a0041156215e2c7d82e363098c89fe21b",
      "to": "0x91067b439e1be22196a5f64ee61e803670ba5be9",
      "transactionHash": "0xad62c939b2e865f13c61eebcb221d2c9737955e506b69fb624210d3fd4e0035b",
      "transactionIndex": 0
    }
```
    Object - A transaction receipt object, or null when no receipt was found:
  [https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethgettransactionreceipt](https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethgettransactionreceipt)

    blockHash: String, 32 Bytes - hash of the block where this transaction was in.
    blockNumber: Number - block number where this transaction was in.
    transactionHash: String, 32 Bytes - hash of the transaction.
    transactionIndex: Number - integer of the transactions index position in the block.
    from: String, 20 Bytes - address of the sender.
    to: String, 20 Bytes - address of the receiver. null when its a contract creation transaction.
    cumulativeGasUsed: Number - The total amount of gas used when this transaction was executed in the block.
    gasUsed: Number - The amount of gas used by this specific transaction alone.
    contractAddress: String - 20 Bytes - The contract address created, if the transaction was a contract creation, otherwise null.
    logs: Array - Array of log objects, which this transaction generated.
