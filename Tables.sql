CREATE TABLE "salesperson" (
  "employee_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("employee_id")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" VARCHAR(15),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "status" VARCHAR(4),
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "year" Integer,
  "price" Integer,
  PRIMARY KEY ("car_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "invoice_date" VARCHAR(10),
  "total_amount" Integer,
  "employee_id" Integer REFERENCES salesperson("employee_id"),
  "customer_id" Integer REFERENCES customer("customer_id"),
  "car_id" Integer REFERENCES car("car_id")
);

CREATE TABLE "service_ticket" (
  "ticket_id" SERIAL,
  "ticket_date" VARCHAR(100),
  "description" VARCHAR(100),
  "customer_id" Integer,
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "service_history" (
  "history_id" SERIAL,
  "service_date" VARCHAR(100),
  "description" VARCHAR(100),
  "car_id" Integer REFERENCES car("car_id"),
  PRIMARY KEY ("history_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" VARCHAR(15),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "mechanic_car_assignment" (
  "assignment_id" SERIAL,
  PRIMARY KEY ("assignment_id"),
  "car_id" Integer REFERENCES car("car_id"),
  "mechanic_id" Integer references mechanic("mechanic_id")
);

CREATE TABLE "parts" (
  "part_id" SERIAL,
  "part_name" VARCHAR(100),
  "part_description" VARCHAR(100),
  "part_cost" Integer,
  PRIMARY KEY ("part_id")
);

CREATE TABLE "service_part_assignment" (
  "assignment_id" SERIAL,
  "ticket_id" Integer references service_ticket("ticket_id"),
  "part_id" Integer references parts("part_id"),
  "quantity" Integer,
  PRIMARY KEY ("assignment_id")
);