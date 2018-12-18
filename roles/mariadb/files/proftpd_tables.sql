CREATE TABLE users (
  userid varchar(30) NOT NULL,
  passwd varchar(80) NOT NULL,
  uid int(11) DEFAULT NULL,
  gid int(11) DEFAULT NULL,
  homedir varchar(255) DEFAULT NULL,
  shell varchar(255) DEFAULT NULL,
  last_accessed DATETIME,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

CREATE TABLE `ftplog` (
  logid bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record ID',
  loguser varchar(50) NOT NULL COMMENT 'Username',
  logdate datetime NOT NULL COMMENT 'Date of up- or download',
  logcmd char(10) NOT NULL COMMENT 'FTP command',
  logfile varchar(255) NOT NULL COMMENT 'Up- or downloaded file',
  logstatus_ftp smallint(5) unsigned NOT NULL COMMENT 'FTP Status',
  PRIMARY KEY (`logid`),
  KEY `user_date` (`loguser`,`logdate`,`logcmd`,`logfile`),
  KEY `date_cmd` (`logdate`,`logcmd`,`loguser`),
  KEY `status_cmd` (`logstatus_ftp`,`logcmd`,`logdate`,`loguser`),
  KEY `user_proc_cmd` (`loguser`,`logcmd`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

CREATE TABLE login_history (
  userid VARCHAR(30) NOT NULL,
  client_ip VARCHAR(20) NOT NULL,
  server_ip VARCHAR(20) NOT NULL,
  protocol VARCHAR(10) NOT NULL,
  last_accessed DATETIME
  );

