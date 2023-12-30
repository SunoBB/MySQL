create database quan_ly_sinh_vien
use quan_ly_sinh_vien

drop table sinh_vien
create table sinh_vien(
ten_sinh_vien nvarchar(50),
tuoi int,
gioi_tinh bit,
so_dien_thoai char(15)
)

insert into sinh_vien(ten_sinh_vien,tuoi,gioi_tinh,so_dien_thoai)
values (N'Bach',17,1,'0123456789')

alter table sinh_vien
add dia_chi nvarchar(255)

update 

select * from sinh_vien;