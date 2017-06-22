#!/bin/sh
geth --identity node1_chain1 --datadir /chaindata --networkid 3333 --nodiscover --rpccorsdomain "*" --rpc --rpcport "8545" --port "30303" --nat "any" --rpcapi "admin,eth,debug,miner,net,shh,txpool,personal,web3" init genesisBlock.json
