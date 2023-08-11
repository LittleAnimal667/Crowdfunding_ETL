CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(66)   NOT NULL,
    "description" varchar(66)   NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(66)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(66)   NOT NULL,
    "currency" varchar(66)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "staff_pick" bool   NOT NULL,
    "spotlight" bool   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category_id" int   NOT NULL,
    "category" varchar(66)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" int   NOT NULL,
    "subcategory" varchar(66)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(66)   NOT NULL,
    "last_name" varchar(66)   NOT NULL,
    "email" varchar(66)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

