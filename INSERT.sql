
INSERT INTO hang_hang_khong VALUES ('VN','Vietnam Airline');
INSERT INTO hang_hang_khong VALUES ('VJ','VietJet');

INSERT INTO may_bay VALUES ('VN', 'VN9999','Boeing 787', '274');
INSERT INTO may_bay VALUES ('VN', 'VN9374','Airbus A350', '305');
INSERT INTO may_bay VALUES ('VN', 'VN7537','Airbus A321', '184');
INSERT INTO may_bay VALUES ('VJ', 'VJ2514','Boeing 787', '274');
INSERT INTO may_bay VALUES ('VJ', 'VJ1983','Airbus A350', '305');

INSERT INTO san_bay VALUES ('HAN', 'Sân bay Nội Bài', 'Hà Nội');
INSERT INTO san_bay VALUES ('SGN', 'TP Hò Chí Minh','Tân Sơn Nhất');
INSERT INTO san_bay VALUES ('KIX', 'Sân bay Osaka', 'Osaka');

INSERT INTO khach_hang VALUES('jz2915@nyu.edu','Jingyi Zhu','Aa123456','Số nhà 01, ngõ 205, Đồng Tâm, Hai bà Trưng, Hà Nội','026297987653','+84 138187','Aa1234567','China','1999-01-01');
INSERT INTO khach_hang VALUES('js123@outlook.com','John Smith','JS000000','New York','123456789','+1 554567','Uv1234567','U.S.A.','1988-12-31');

INSERT INTO nhan_vien VALUES ('admin01@han.com', 'admin01', 'NV01', 'HAN', 'Trần Hoàng Kim Anh', '098203987653', '2003-01-01');
INSERT INTO nhan_vien VALUES ('admin02@han.com', 'admin02', 'NV02','HAN', 'Trần Thành Đạt', '027303876537', '2003-01-02' );

INSERT INTO chuyen_bay VALUES ('VN', 'N01', 'VN9374','HAN','2019-06-01', '22:50:00', 'SGN','2019-07-01', '00:50:00',3000 ,2000000, 'đúng giờ');
INSERT INTO chuyen_bay VALUES ('VN', 'N02', 'VN9999','SGN','2019-06-01', '10:50:00', 'HAN','2019-06-01', '12:50:00',3000 ,2000000, 'trễ giờ');

INSERT INTO ve_may_bay VALUES ('AV01', 'VN', 'N01', '2019-06-01', '22:50:00','00:50:00','normal', 2000000);
INSERT INTO ve_may_bay VALUES ('AV02', 'VN', 'N01', '2019-06-01', '22:50:00','00:50:00', 'premium', 6000000);

INSERT INTO hoa_don VALUES ('AV01', 'jz2915@nyu.edu','026297987653', '2019-05-01', '00:10:10', 2300000, 'VNPay');
INSERT INTO hoa_don VALUES ('AV02', 'js123@outlook.com','123456789', '2019-05-01', '07:10:10', 6300000, 'VNPay');

INSERT INTO phan_quyen VALUES ('admin01@han.com', 'thu ngan');
INSERT INTO phan_quyen VALUES ('admin02@han.com', 'quan ly');


