DROP TABLE IF EXISTS `user_wallet`;
create table user_wallet(
	`id` bigint(20) unsigned not null auto_increment,
    `user_id` bigint(20) unsigned default null COMMENT '用户id',
    `user_balance` bigint(20)  default 0 COMMENT '账户余额，默认保留两位小数，存储时需要将原数值*100，取出时需要进行转换运算',
    `gmt_create` datetime default CURRENT_TIMESTAMP COMMENT '数据创建时间',
    `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据最后修改时间',
    primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额表';


DROP TABLE IF EXISTS `user_spending_record`;
create table user_spending_record(
	`id` bigint(20) unsigned not null auto_increment,
    `user_id` bigint(20) unsigned not NULL COMMENT '用户id',
    `uer_bill` bigint(20) unsigned default 0 COMMENT '账户账单，默认保留两位小数，存储时需要将原数值*100，取出时需要进行转换运算',
    `gmt_create` datetime default current_timestamp comment '数据创建时间',
    `gmt_modified` datetime default current_timestamp COMMENT '数据最后修改时间',
    primary key(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变动记录表';