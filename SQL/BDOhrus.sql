drop database if exists Ohrusoft;
create database Ohrusoft;
use Ohrusoft;
create table TblCatTipoPer(
	IdTipoPer int auto_increment not null,
    TipoPer varchar(40) not null,
    primary key(IdTipoPer));

create table tblDireccionPer(
	idDir int auto_increment not null,
    Calle varchar(50) not null,
    Colonia varchar(50) not null,
    CP varchar(5) not null,
    NumInt varchar(3) not null,
    NumExt varchar(3) not null,
    Municipio varchar(50) not null,
    Ciudad varchar(50) not null,
    primary key(idDir));
    
create table tblPersona(
	idPersona int auto_increment not null,
    Boleta varchar(15) not null,
    Nombre varchar(40) not null,
    ApellidoPa varchar(45) not null,
    ApellidoMa varchar(45) not null,
    Telefono varchar(15) not null,
    Usuario varchar(45) not null,
    Contaseña varchar(40) not null,
    CorreoElec varchar(100) not null, 
    IdTipoPer int not null,
    primary key (idPersona),
	foreign key(IdTipoPer) references tblCatTipoPer(IdTipoPer));
    
create table tblChat(
	mensaje varchar(250),
    Fecha datetime not null,
    Persona int not null,
    foreign key(Persona) references tblPersona(idPersona));
    
create table tblRelDirPer(
	IdRelDirPer int auto_increment not null,
    Persona int not null,
    Direccion int not null,
    primary key(IdRelDirPer),
    foreign key(Persona) references tblPersona(IdPersona),
    foreign key(Direccion) references tblDireccionPer(idDir));
    
create table tblRutas(
	IdRuta int auto_increment not null,
    Persona int not null,
    Costo int not null,
    Tiempo datetime not null,
    primary key(IdRuta),
    foreign key(Persona) references tblPersona(IdPersona));
    
create table tblCatTipoEsta(
	IdTipoEsta int auto_increment not null,
    TipoEsta varchar(50) not null,
    primary key(IdTipoEsta));
    
create table tblEstadisticas(
	IdEstadistica int auto_increment not null,
    Persona int not null,
    IdRuta int not null,
    Tipo int not null,
    primary key(IdEstadistica),
    foreign key(IdRuta) references tblRutas(IdRuta),
    foreign key(Persona) references tblPersona(IdPersona),
    foreign key(Tipo) references tblCatTipoEsta(IdTipoEsta));