--Phía người dùng
---Tìm kiếm chuyến bay

----Input : điểm xuất phát, điểm đến, ngày khởi hành
select so_hieu, xuat_phat, diem_den, ngay_bay, gio_bay, gio_den from chuyen_bay where xuat_phat = 'HAN' and diem_den = 'SGN' and ngay_bay = '2019-06-01' 
select so_hieu, xuat_phat, diem_den, ngay_bay, gio_bay, gio_den from chuyen_bay where xuat_phat = %s and diem_den = %s and ngay_bay = %s 

----KQ: VN9374 HAN SGN 2019-06-01 22:50:00 00:50:00

---Xem chi tiết chuyến bay
select * from chuyen_bay where xuat_phat = 'HAN' and diem_den = 'SGN' and ngay_bay = '2019-06-01'
select * from chuyen_bay where xuat_phat = %s and diem_den = %s and ngay_bay = %s

----KQ: VN N01 VN9374 HAN 2019-06-01 22:50:00 SGN 2019-07-01-00:50:00 3000 2000000 đúng giờ

---Tra cứu hóa đơn
select * from hoa_don where email= 'jz2915@nyu.edu'
select * from hoa_don where email= %s

----KQ: AV01 jz2915@nyu.edu 026297987653 2019-05-01 00:10:10 2300000 VNPay

--Phía nhân viên
---Insert
Insert into may_bay (ma_hang,so_hieu, ten_may_bay, so_ghe) values (%s, %s, %s, %d)

---update
update may_bay set ten_may_bay = %s where (ma_hang, so_hieu) = (%s, %s)

---delete
delete from may_bay where so_hieu = %s














--create view flight_seats_sold as
--select airline_name, flight_number, departure_date, departure_time, amount_of_seats, count(purchase.ticket_id) as tickets_sold
--from (flight natural join airplane natural join ticket) natural left outer join purchase
--group by airline_name, flight_number, departure_date, departure_time;

--create view flight_price as
--select airline_name, flight_number, departure_date, departure_time,
--arrival_date, arrival_time, departure_airport, arrival_airport,
--CASE WHEN tickets_sold >= 0.7 * amount_of_seats THEN base_price * 1.2
--ELSE base_price
--END AS price
--from flight natural left outer join flight_seats_sold;


/* haven't been inserted in Test-Air-Ticket
>>>>>>> c5d4cbb44db9df12eb6f0d255e5f56b05130fc54
create view frequent_customer as
        select airline_name, email, name, count(ticket_id) as num_ticket
        from (ticket natural join purchase) join customer using (email)
        where YEAR(purchase_date) = YEAR(now())-1
        group by airline_name, email

-- create view frequent_customer as
-- select airline_name, email, name, count(ticket_id) as num_ticket
-- from (ticket natural join purchase) join customer using (email)
-- group by airline_name, email;

-- create view top_destinations as
-- select airline_name, arrival_airport, city, departure_date, sum(tickets_sold) as num_ticket
-- from flight_seats_sold natural join flight natural join airport
-- where arrival_airport = airport_name
-- group by airline_name, arrival_airport, city
