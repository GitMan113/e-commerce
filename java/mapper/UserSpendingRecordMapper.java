interface UserSpendingRecordMapper{
    
    /**
    	查询用户钱包金额变动明细
    */
    UserSpendingRecordVO selectuserSpendingRecordByUserId(Long userId);
}
