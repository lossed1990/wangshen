USE wangshen;

CREATE TABLE resumes (
  c_resumeid varchar(255) NOT NULL COMMENT '用户简历GUID',
  c_resumename varchar(255) DEFAULT NULL COMMENT '简历名称',
  un_tempid int(11) UNSIGNED DEFAULT NULL COMMENT '对应简历模板id',
  un_userid int(11) UNSIGNED DEFAULT NULL COMMENT '关联用户id',
  js_resume json DEFAULT NULL COMMENT '简历内容',
  un_lastmodifieduser int(11) UNSIGNED DEFAULT NULL COMMENT '最后修改用户',
  dtime_lastmodified datetime DEFAULT NULL COMMENT '简历修改时间',
  bi_deleteflag tinyint(1) DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (c_resumeid)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '用户简历'
ROW_FORMAT = DYNAMIC;