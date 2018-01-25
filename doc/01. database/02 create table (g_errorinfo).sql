USE wangshen;

CREATE TABLE g_errorinfo (
  c_errorcode char(10) NOT NULL COMMENT '错误码',
  vc_errorinfo varchar(255) NOT NULL COMMENT '错误描述',
  PRIMARY KEY (c_errorcode),
  UNIQUE INDEX c_errorcode (c_errorcode)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '全局错误码'
ROW_FORMAT = DYNAMIC;