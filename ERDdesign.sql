CREATE TABLE campaign (
Cf_id INTEGER,
Contact_id INTEGER,
Company_name VARCHAR,
Description VARCHAR,
Goal INTEGER,
Pledged INTEGER,
Outcome VARCHAR,
Backers_count INTEGER,
Country VARCHAR,
Currency VARCHAR,
Launched_date DATE,
End_date DATE,
Category_ids VARCHAR, FK >- category.Category_ids
Subcategory_ids VARCHAR, FK >- subcategory.Subcategory_ids
PRIMARY KEY (Cf_id)
FOREIGN KEY(Contact_id) REFERENCES contacts (Contact_id)
FOREIGN KEY(Category_ids) REFERENCES category (Category_ids)
FOREIGN KEY(Subcategory_ids) REFERENCES subcategory (Subcategory_ids);

);

category
-
Category_ids VARCHAR PK
Category VARCHAR

subcategory
-
Subcategory_ids VARCHAR PK
Sub-category VARCHAR

contacts
-
Contact_id INTEGER PK
First_name VARCHAR
Last_name VARCHAR
Email VARCHAR