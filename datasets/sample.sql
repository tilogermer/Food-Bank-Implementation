BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Biocompany','');
INSERT INTO "Account" VALUES(2,'Sample Account for Entitlements','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2022-03-12','Frozen','2');
INSERT INTO "Delivery_Item__c" VALUES(2,'2022-06-30','Frozen','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-02-16','Non-refrigerated','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2022-02-24T11:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(2,'2022-02-26T11:00:00.000+0000','Scheduled','1');
COMMIT;
