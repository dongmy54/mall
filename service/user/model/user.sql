CREATE TABLE `user` (
  `id` bigint signed NOT NULL AUTO_INCREMENT,
  `name` varchar(255)  NOT NULL DEFAULT '' COMMENT '用户姓名',
  `gender` tinyint(3) signed NOT NULL DEFAULT '0' COMMENT '用户性别',
  `mobile` varchar(255)  NOT NULL DEFAULT '' COMMENT '用户电话',
  `password` varchar(255)  NOT NULL DEFAULT '' COMMENT '用户密码',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mobile_unique` (`mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;