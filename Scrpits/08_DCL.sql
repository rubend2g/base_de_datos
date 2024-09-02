create user if not exists 'usuario1'@'localhost' identified by 'abc123';
create user if not exists 'usuario2'@'localhost' identified by 'abc123';
show grants for usuario1@localhost;

grant select on easy.* to 'usuario1'@'localhost';

grant select , insert , update on easy.* to 'usuario2'@'localhost';