pragma solidity ^0.4.23;
import "./MyFomoEvents.sol";

contract MyFomoDataSet {
    struct Round {
        uint256 strt;   // 游戏的开始时间
        uint256 end;    // 游戏结束时间
        bool ended;     // 当前轮游戏是否已经结束
        uint256 keys;   // 总钥匙数
        uint256 eth;    //  总eth金额
        uint256 pot;    // 当前可以供最终玩家的信息
        uint256 mask;   // global mask
    }
    
    struct UserAmount {
        uint256 totalKeys;          // 购买钥匙总量
        uint256 totalBet;           // 总投注量
        uint256 lastKeys;           // 最后一次购买钥匙数量
        uint256 lastBet;            // 最后一次投注量
        uint256 totalBalance;       // 总余额
        uint256 withdrawAble;       // 可提现总量
        uint256 withdraw;           // 已提现数量
        uint256 totalProfit;        // 获益总量 （不算成本)
        uint256 inviteProfit;       // 邀请获益
        mapping(uint256 => uint256) roundProfit;    // 每轮获利 （不算成本)
    }

}