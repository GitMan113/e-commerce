interface UserWalletMapper{
    /**
    	查询用户钱包余额
    */
    UserWalletVO selectUserBalanceByUserId(Long userId);
    
    /**
    	用户余额更新
    */
    void updateUserBalanceByUserId(UserWalletVO userWallet);
}