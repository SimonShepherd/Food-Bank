BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Simon Shepherd','');
INSERT INTO "Account" VALUES(3,'Simon Shepherd','');
INSERT INTO "Account" VALUES(4,'Sample Account for Entitlements','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2022-01-07','Non-refrigerated','Tim Tam','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2025-12-12','Frozen','Hotdog','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'','Non-refrigerated','PopCorn','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-12-21T01:00:00.000+0000','Requested','');
COMMIT;
