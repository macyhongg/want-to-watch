set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "public" cascade;

create schema "public";

CREATE TABLE "public"."users" (
	"userId" serial NOT NULL,
	"username" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("userId")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public"."watch_list" (
	"userId" integer NOT NULL,
	"movieId" varchar(255) NOT NULL,
	"watched" BOOLEAN NOT NULL,
	CONSTRAINT "watch_list_pk" PRIMARY KEY ("userId")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "public"."user_activity" (
	"userId" integer NOT NULL,
	"movieId" varchar(255) NOT NULL,
	"thumbsUp" BOOLEAN NOT NULL,
	"thumbsDown" BOOLEAN NOT NULL,
	CONSTRAINT "user_activity_pk" PRIMARY KEY ("userId","movieId")
) WITH (
  OIDS=FALSE
);

-- will need to set up a database of created movie cards

ALTER TABLE "watch_list" ADD CONSTRAINT "watch_list_fk0" FOREIGN KEY ("userId") REFERENCES "users"("userId");

ALTER TABLE "user_activity" ADD CONSTRAINT "user_activity_fk0" FOREIGN KEY ("userId") REFERENCES "users"("userId");
