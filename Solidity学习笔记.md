### 2017-06-01

1. Events

  events 可以让我们很方便地使用 EVM 记录（日志）工具，它可以用于调用 DAPP 用户界面的 JavaScript 回调函数，这些回调函数监听着这些事件（events）.
  events 是智能合约中可以继承的成员. 当 events 被调用时，它们会将参数存储在 transaction 的 log 中，log 是区块链中一种特殊的数据结构. 这些 logs 和智能合约的地址相关，它们被整合进区块链中，只要存储它们的区块可以访问，它们会一直存在(Frontier 和 Homestead 是这样，Serenity可能会改变这一特性). log 和 event data 在智能合约中是不可以访问的，即便是创建它们的智能合约也不可以访问.
  在 events 进行声明时，最多有三个参数的前缀可以加 indexed，加了 indexed 的参数就可以通过特定的值过滤搜索它们. 加了 indexed 的参数的值不会被存储，只能通过它们的值搜索它们.

2.  signature of an event is a topic. And also very index argument is a topic.

[https://ethereum.stackexchange.com/questions/12950/what-are-event-topics](https://ethereum.stackexchange.com/questions/12950/what-are-event-topics)

### 2017-06-02

1. cumulativeGasUsed is the sum of gasUsed by this transaction and all preceding transactions in the same block.
[https://ethereum.stackexchange.com/questions/3346/what-is-and-how-to-calculate-cumulative-gas-used](https://ethereum.stackexchange.com/questions/3346/what-is-and-how-to-calculate-cumulative-gas-used)
