create database  lista4;
use lista4;

create table dados_multimidia (
código integer primary key,
nome varchar(30),
tipo varchar (20),
dados longblob
);

show variables like 'secure_file_priv';

INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('0', 'nwagrupo','jpg', 'load_file("C:\wamp64\tmp\img0.jpg)');
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('1', 'nwawanted','jpg', 'load_file("C:\wamp64\tmp\img1.jpg)');
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('2', 'nwamusic','jpg', 'load_file("C:\wamp64\tmp\img2.jpg)');	
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('3', 'nwaquattro','jpg', 'load_file("C:\wamp64\tmp\img3.jpg)');

select dados INTO dumpfile 'C:\\wamp64\\tmp\\imagem_export.jpg' FROM dados_multimidia WHERE código = 1;
