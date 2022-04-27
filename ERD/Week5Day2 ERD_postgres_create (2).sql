CREATE TABLE "customers" (
	"customer_id" serial NOT NULL,
	"username" varchar(50) NOT NULL UNIQUE,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"email" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "customers_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tickets" (
	"total_number" int NOT NULL,
	"theater_id" serial NOT NULL,
	"price" float8 NOT NULL,
	"date_of_purchase" DATE NOT NULL,
	"purchase_origin" varchar(255) NOT NULL,
	"movie_id" int NOT NULL,
	"customer_id" varchar(255) NOT NULL,
	CONSTRAINT "tickets_pk" PRIMARY KEY ("theater_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "movies" (
	"movie_id" serial NOT NULL,
	"premire_date" DATE NOT NULL,
	"show_times" TIME NOT NULL,
	"showing_dates" DATE NOT NULL,
	"description" varchar(255) NOT NULL,
	"title" varchar(255) NOT NULL,
	CONSTRAINT "movies_pk" PRIMARY KEY ("movie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "concession" (
	"theater_id" int NOT NULL,
	"food" varchar(255) NOT NULL,
	"drink" varchar(255) NOT NULL,
	"apparel" varchar(255) NOT NULL,
	"candy" varchar(255) NOT NULL,
	"beer" varchar(255) NOT NULL,
	"alcohol" varchar(255) NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk0" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id");
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk1" FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id");


ALTER TABLE "concession" ADD CONSTRAINT "concession_fk0" FOREIGN KEY ("theater_id") REFERENCES "tickets"("customer_id");





