#!/bin/bash
#启动分别装有Ethereum节点的两个容器和redis客户端redis-cli
#Zhengkai Wang
#2017-6-20
if tmux list-session -F "#{session_name}" | grep -q blockchain; then
    tmux kill-session -t blockchain
fi
tmux new-session -d -s blockchain

tmux split-window -h

tmux split-window -v

tmux send-keys -t 0 "redis-cli -a 570978" C-m

tmux send-keys -t 1 "sudo docker start node1_chain1" C-m
tmux send-keys -t 1 "sudo docker attach node1_chain1" C-m

tmux send-keys -t 2 "sudo docker start node2_chain1" C-m
tmux send-keys -t 2 "sudo docker attach node2_chain1" C-m

tmux attach -t blockchain
