USE wangshen;

CREATE TABLE rstemplate (
  un_tempid int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模板id',
  vc_tempname varchar(255) NOT NULL COMMENT '模板名称',
  vc_tempinfo varchar(255) DEFAULT NULL COMMENT '模板描述',
  vc_temppic varchar(255) DEFAULT NULL COMMENT '模板封面ID',
  js_temp json DEFAULT NULL COMMENT '模板JSON',
  dtime_lastmodified datetime DEFAULT NULL COMMENT '最后修改时间',
  bi_enableflag tinyint(1) DEFAULT 1 COMMENT '模板是否启用',
  bi_deleteflag tinyint(1) DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (un_tempid)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '模板表'
ROW_FORMAT = DYNAMIC;