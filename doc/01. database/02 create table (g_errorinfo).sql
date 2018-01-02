USE wangshen;

DROP TABLE g_errorinfo;
CREATE TABLE g_errorinfo (
  c_errorcode char(10) NOT NULL COMMENT '������',
  vc_errorinfo varchar(255) NOT NULL COMMENT '��������',
  PRIMARY KEY (c_errorcode),
  UNIQUE INDEX c_errorcode (c_errorcode)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'ȫ�ִ�����'
ROW_FORMAT = DYNAMIC;