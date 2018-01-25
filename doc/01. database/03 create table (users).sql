USE wangshen;

CREATE TABLE users (
  un_uid integer(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户自增ID',
  c_username char(20) DEFAULT NULL COMMENT '可选用户名',
  c_mobilenumder char(20) DEFAULT NULL COMMENT '用户手机号',
  c_passhash varchar(255) NOT NULL COMMENT '密码SHA256',
  dtime_registertime datetime NOT NULL COMMENT '用户注册时间',
  dtime_lastmodified datetime NOT NULL COMMENT '数据最后更新时间',
  bi_deleteflag bit(1) NOT NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (un_uid)
)
ENGINE = INNODB
COMMENT = '用户表';