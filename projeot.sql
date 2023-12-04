create database AbastecimentosVeiculos;

use AbastecimentosVeiculos;

create table Veiculo (
placaDoCarro VARCHAR(10) primary key not null,
modeloDoCarro VARCHAR(40) not null,
anoDoCarro INT not null
);

create table Posto (
veiculo_placaDoCarro VARCHAR(10),
nome VARCHAR(50) not null,
localizacao VARCHAR(100) not null,
foreign key (veiculo_placaDoCarro) references Veiculo(placaDoCarro)
);

create table Abastecimento (
veiculo_placaDoCarro VARCHAR(10),
dataDeAbastecimento DATE,
tipoCombustivel VARCHAR(10),
precoPago DOUBLE,
quantidadeDeLitros DOUBLE,
distanciaPercorrida DOUBLE,
mediaPorLitro DOUBLE,
foreign key (veiculo_placaDoCarro) references Veiculo(placaDoCarro)
);
