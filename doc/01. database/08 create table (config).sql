USE wangshen;

CREATE TABLE config (
  vc_key varchar(255) NOT NULL,
  vc_value varchar(20000) DEFAULT NULL,
  PRIMARY KEY (vc_key)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '系统配置表'
ROW_FORMAT = DYNAMIC;