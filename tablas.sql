CREATE TABLE "countries" (
  "id" integer,
  "name" integer,
  "code" varchar,
  "abrev" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "departments" (
  "id" integer,
  "id_countries" integer,
  "name" integer,
  "code" varchar,
  "abrev" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "cities" (
  "id" integer,
  "id_department" integer,
  "name" integer,
  "code" varchar,
  "abrev" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "id_city" integer,
  "ident_number" varchar,
  "first_name" varchar,
  "last_name" varchar,
  "address" varchar,
  "mobile_number" varchar,
  "email" varchar,
  "password" varchar,
  "status" boolean,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

ALTER TABLE "users" ADD FOREIGN KEY ("id_city") REFERENCES "cities" ("id");

ALTER TABLE "cities" ADD FOREIGN KEY ("id_department") REFERENCES "departments" ("id");

ALTER TABLE "departments" ADD FOREIGN KEY ("id_countries") REFERENCES "countries" ("id");
