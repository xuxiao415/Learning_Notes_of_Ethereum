pragma solidity ^0.4.11;
contract VideoCertificate {
    address creator;
    mapping(string => uint) videos;

    //构造函数

    function VideoCertificate() public {
        creator = msg.sender;
    }

    //添加视频存证

    function addVideo(string videoName, uint videoSHA256) public returns (string) {
        if (videos[videoName] == 0) {
            videos[videoName] = videoSHA256;
            return "success";
        } else {
            return "failure";
        }
    }

    //获取已添加的视频

    function getVideoSHA256(string videoName) constant public returns (uint) {
        return videos[videoName];
    }

    //智能合约销毁函数，智能只能有只能由合约创建着者调用

    function kill()
    {
        if (msg.sender == creator)
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }
}
