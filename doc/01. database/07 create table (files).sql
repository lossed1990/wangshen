USE wangshen;

CREATE TABLE files (
  c_fileid char(32) NOT NULL COMMENT '文件id',
  un_filesize int(11) UNSIGNED DEFAULT NULL COMMENT '文件字节大小',
  vc_relpath varchar(255) DEFAULT NULL COMMENT '文件相对路径',
  c_fileext char(8) DEFAULT NULL COMMENT '文件扩展名',
  un_upuser int(11) UNSIGNED DEFAULT NULL COMMENT '上传用户id',
  dtime_lastmodifile datetime DEFAULT NULL COMMENT '最后修改时间',
  bi_deleteflag tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标志',
  PRIMARY KEY (c_fileid)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = '上传文件表'
ROW_FORMAT = DYNAMIC;