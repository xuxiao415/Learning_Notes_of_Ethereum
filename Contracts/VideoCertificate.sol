pragma solidity ^0.4.11;
contract VideoCertificate {
    address creator;
    mapping(string => uint) videos;
    event addVideoResult(address indexed addVideoUser, string indexed videoName, bool indexed addVideoResult);
    event verifyVideoResult(address indexed verifiedUser, string indexed videoName, bool indexed verifiedResult);

    //构造函数

    function VideoCertificate() public {
        creator = msg.sender;
    }

    //添加视频存证

    function addVideo(string videoName, uint videoSHA256) public {
        if (videos[videoName] == 0) {
            videos[videoName] = videoSHA256;
            addVideoResult(msg.sender, videoName, true);
        } else {
            addVideoResult(msg.sender, videoName, false);
        }

    }

    //视频验证

    function verifyVideo(string videoName, uint videoSHA256) public {
        if (videos[videoName] == videoSHA256){
            verifyVideoResult(msg.sender, videoName, true);
        } else {
            verifyVideoResult(msg.sender, videoName, false);
        }
    }

    //智能合约销毁函数，智能只能有只能由合约创建着者调用

    function kill()
    {
        if (msg.sender == creator)
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }
}
