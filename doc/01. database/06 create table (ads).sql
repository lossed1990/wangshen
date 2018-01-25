USE wangshen;

CREATE TABLE ads (
  un_type int(11) UNSIGNED NOT NULL COMMENT '广告类型',
  vc_name varchar(255) DEFAULT NULL COMMENT '广告名称',
  ti_infotype tinyint(4) UNSIGNED DEFAULT NULL COMMENT '广告内容类型',
  tx_info longtext DEFAULT NULL COMMENT '广告内容',
  dtime_lastmodified datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (un_type)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '广告模板'
ROW_FORMAT = DYNAMIC;