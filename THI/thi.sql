CREATE DATABASE THI
CREATE TABLE SINHVIEN
(
	masosv NVARCHAR(50) NOT NULL
	CONSTRAINT pk_SINHVIEN
	PRIMARY KEY (masosv),
	hoten NVARCHAR(50) NULL,
	namsinh NVARCHAR(50) NULL,
	gioitinh NVARCHAR(50) NULL,
	diachi NVARCHAR(50) NULL,
	dienthoai nvarchar(50) NULL,
	
)

	
CREATE TABLE KHOA
(
	makhoa NVARCHAR(50) NOT NULL
	CONSTRAINT pk_KHOA
	PRIMARY KEY (makhoa),
	tenkhoa NVARCHAR(50) NULL,
	tenlop NVARCHAR(50) NULL,
)
CREATE TABLE PHONG
(
	maphong NVARCHAR(50) NOT NULL
	CONSTRAINT pk_PHONG
	PRIMARY KEY (maphong),
    sophong NVARCHAR(50) NULL,
	loaiphong NVARCHAR(50) NULL,
	
)
CREATE TABLE QUANLY
(
	madon NVARCHAR(50) NOT NULL
	CONSTRAINT pk_QUANLY
	PRIMARY KEY (madon),
	masosv NVARCHAR(50) NULL,
	makhoa NVARCHAR(50) NULL,
	maphong NVARCHAR(50) NULL,
)

 INSERT INTO SINHVIEN(masosv,hoten,namsinh,gioitinh,diachi,dienthoai)
VALUES
(' MS1 ', ' dang ha ha',' 2002 ', 'nu',' pho yen ','123'),
(' m2 ', ' nguyen thi thao',' 2002 ', 'nu',' pho yen ','0123'),
(' m3 ', ' hoang manh tien ',' 2002 ', 'nam',' thai nguyen ','013323'),
(' m4 ', ' nguyen ngoc thai ',' 2002 ', 'nam',' pho yen ','014423'),
(' m5 ', ' nguyen thi hoa ', ' 2002 ', 'nu',' pho yen ','0123')

INSERT INTO KHOA(makhoa,tenkhoa,tenlop)
VALUES
('k1',' dien ', 'ddt.01'),
('k2',' dien tu ', 'kmt.01'),
('k3',' dien tu ', 'kmt.01'),
('k4',' dien ', 'ddt.01'),
('k5',' dien tu ', 'kmt.01')

INSERT INTO PHONG(maphong,sophong,loaiphong)
VALUES
(' p1 ', ' 11 ',' A '),
(' p2 ', ' 12 ',' A '),
(' p3 ', ' 13 ',' A '),
(' p4 ', ' 14 ',' A '),
(' p5 ', ' 15 ',' A ')

INSERT INTO QUANLY(madon,masosv,makhoa,maphong)
VALUES
(' MD1 ',' MS1 ',' k1 ',' p1 '),
(' MD2 ', ' m2 ',' k2 ',' p2 '),
(' MD3 ', ' m3 ',' k3 ',' p3 '),
(' MD4 ', ' m4 ',' k4 ',' p4 '),
(' MD5 ', ' m5 ',' k5 ',' p5 ')

ALTER TABLE QUANLY
ADD 
CONSTRAINT fk_phong
FOREIGN KEY (maphong) 
REFERENCES PHONG (maphong) 
ON DELETE CASCADE ON UPDATE CASCADE
