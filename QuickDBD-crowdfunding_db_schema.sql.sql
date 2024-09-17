-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3P0pki
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Campaign" (
    "Cf_ID" int   NOT NULL,
    "Contact_id" string   NOT NULL,
    "company_name" string   NOT NULL,
    "description" string   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" string   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" string   NOT NULL,
    "currency" int   NOT NULL,
    "launched_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "Cf_ID"
     )
);

CREATE TABLE "Category" (
    "category_id" int   NOT NULL,
    "category" string   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "email" string   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
CREATE TABLE "Subcategory" (
    "subcategory_id" int   NOT NULL,
    "subcategory" string   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("Contact_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

