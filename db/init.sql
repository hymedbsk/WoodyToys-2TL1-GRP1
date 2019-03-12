CREATE user 'web'@172.16.1.5 identified by 'xxx';
CREATE user 'admin'@'localhost' identified by 'xxx';
grant all privileges on *.* TO 'web'@172.16.1.5;
grant all privileges on *.* TO 'admin'@'localhost';

flush privileges;