 --tạo bảng hãng hàng không
create table hang_hang_khong
	(ma_hang varchar(30) not null,
	ten_hang varchar(255),
	primary key	(ma_hang)
	);
--tạo bảng máy bay
create table may_bay
	(ma_hang varchar(30),
	so_hieu varchar(30) not null,
	ten_may_bay varchar(255),
	so_ghe int,
	primary key	(ma_hang, so_hieu),
	foreign key (ma_hang) references hang_hang_khong(ma_hang)
		on update cascade
	);
--tạo bảng sân bay
create table san_bay
	(ma_san_bay varchar(30) not null,
	ten_san_bay varchar(255),
	thanh_pho varchar(255),
	primary key (ma_san_bay)
	);
select * from san_bay
--tạo bảng chuyến bay
CREATE table chuyen_bay
	(ma_hang varchar(30),
	ma_chuyen_bay varchar(30) not null,
	so_hieu varchar(30) not null,
	xuat_phat varchar (30),
	ngay_bay date not null,
	gio_bay time not null,
	diem_den varchar(30),
	ngay_den date,
	gio_den time,
	khoang_cach int,
	gia_truoc_thue int,
	trang_thai varchar(30) ,
	primary key (ma_hang, ma_chuyen_bay, ngay_bay, gio_bay),
	foreign key (ma_hang,so_hieu) references may_bay(ma_hang,so_hieu)
		on update cascade,
	foreign key (xuat_phat) references san_bay(ma_san_bay)
		on update cascade,
	);
--tạo bảng khách hàng
create table khach_hang
	(email varchar(255) not null,
	ho_ten varchar(255),
	mat_khau varchar(255) not null,
	dia_chi varchar(255),
	cccd varchar(30),
	sdt varchar(10),
	so_ho_chieu varchar(30),
	quoc_tich varchar(30),
	ngay_sinh date,
	primary key (cccd)
	);
	drop table khach_hang
--tạo bảng nhân viên
CREATE TABLE nhan_vien (
  email varchar(255) NOT NULL,
  mat_khau varchar(255) NOT NULL,
  ma_NV varchar(30) NOT NULL,
  ma_san_bay varchar(30),
  ho_ten varchar(255),
  cccd varchar(30),
  ngay_sinh date,
  foreign key (ma_san_bay) references san_bay(ma_san_bay)
		on update cascade,
  PRIMARY KEY(email)
);

--tạo bảng vé máy bay
create table ve_may_bay
	(ma_ve varchar(30) not null,
	ma_hang varchar(30),
	ma_chuyen_bay varchar(30),
	ngay_bay date,
	gio_bay time,
	gio_den time,
	hang_bay varchar(30),
	gia_ve int,
	primary key (ma_ve),
	foreign key (ma_hang, ma_chuyen_bay, ngay_bay, gio_bay) references chuyen_bay(ma_hang, ma_chuyen_bay, ngay_bay, gio_bay)
		on update cascade
	);
--tạo bảng hóa đơn
create table hoa_don
	(ma_ve varchar(30),
	email varchar(255),
	cccd varchar (30),
	ngay_lap date,
	gio_lap time,
	gia_HD float not null,
	thanh_toan varchar(255),

	primary key (ma_ve, cccd),
	foreign key (ma_ve) references ve_may_bay(ma_ve)
		on update cascade,
	foreign key (cccd) references khach_hang(cccd)
		on update cascade
	);
--tạo bảng phân quyền
create table phan_quyen 
	(email varchar(255),
	phan_quyen varchar(30),
	primary key (email, phan_quyen),
	foreign key (email) references nhan_vien(email)
		on update cascade,
	);
	drop table phan_quyen


--create table rates
--	(email varchar(50),
--	airline_name varchar(50),
--	flight_number varchar(20),
--	departure_date date,
--	departure_time time,
--	rating int,
--	comments varchar(500),
--	primary key (email, airline_name, flight_number, departure_date, departure_time),
--	foreign key (email) references customer(email)
--		on update cascade,
--	foreign key (airline_name, flight_number, departure_date, departure_time) references flight(airline_name, flight_number, departure_date, departure_time)
--		on update cascade
--	);





