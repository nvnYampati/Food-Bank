BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Some Food bank','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2023-11-02','Frozen','frozen shit','2');
INSERT INTO "Delivery_Item__c" VALUES(2,'2024-04-24','Non-refrigerated','some food','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-09-20','Non-refrigerated','food food','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2023-04-19T06:30:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(2,'2023-04-07T06:30:00.000+0000','Scheduled','2');
COMMIT;
