interface UserSpendingRecordMapper{
    
    /**
    	查询用户钱包金额变动明细的方法
    */
    UserSpendingRecordVO selectuserSpendingRecordByUserId(Long userId);
}