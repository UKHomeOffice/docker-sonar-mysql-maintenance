FROM quay.io/ukhomeofficedigital/mysql-maintenance:v0.1.0

COPY *.sql /docker-entrypoint-initdb.d/

