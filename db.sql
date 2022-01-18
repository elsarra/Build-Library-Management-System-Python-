
CREATE TABLE "Employe" ( "ID" INTEGER, "Code" TEXT, "Name" TEXT, "LName" TEXT, "Category" TEXT, "Genre" TEXT, "Mobile" TEXT, PRIMARY KEY("ID") )
DROP TABLE IF EXISTS 'authors';

CREATE TABLE "authors" ("idauthor" INTEGER NOT NULL AUTO_INCREMENT,
  "author_name" TEXT DEFAULT NULL,
  PRIMARY KEY ("idauthor")
)


LOCK TABLES "authors" WRITE;

INSERT INTO "authors" VALUES (1,'Mahmoud Ahmed'),(2,'sayed'),(3,'ali');

UNLOCK TABLES;



DROP TABLE IF EXISTS "book";

CREATE TABLE "book" (
  "id",INTEGER DEFAULT NOT NULL
  "book_name" TEXT DEFAULT NULL,
  "book_description" TEXT DEFAULT NULL,
  "book_code" TEXT DEFAULT NULL,
  "book_category" TEXT DEFAULT NULL,
  "book_author" TEXT DEFAULT NULL,
  "book_publisher" TEXT DEFAULT NULL,
  "book_price" INTEGER DEFAULT NULL,
  PRIMARY KEY ("id")
) 



LOCK TABLES "book" WRITE;

INSERT INTO "book" VALUES (2,'python coding','python tutorials','003','Gaming','sayed','maati',50),(3,'python programming','this is a book for python','004','Drama','Mahmoud Ahmed','Ahmed Ali',50),(4,'pyqt library system','a real project with pyqt5','005','Drama','sayed','ahmed',200),
(5,'pyqt5 project','build a library system','006','Gaming','Mahmoud Ahmed','Ahmed Ali',40);

UNLOCK TABLES;



DROP TABLE IF EXISTS "category";

CREATE TABLE "category" (
  "idcategory" INTEGER NOT NULL,
  "category_name" TEXT DEFAULT NULL,
  PRIMARY KEY ("idcategory")
) 


LOCK TABLES "category" WRITE;

INSERT INTO "category" VALUES (1,'Gaming'),(2,'Drama'),(3,'Sport'),(4,'Cooking');

UNLOCK TABLES;



DROP TABLE IF EXISTS "clients";

CREATE TABLE "clients" (
  "idclients" INTEGER NOT NULL ,
  "client_name" TEXT DEFAULT NULL,
  "client_email" TEXT DEFAULT NULL,
  "client_nationalid" TEXT DEFAULT NULL,
  PRIMARY KEY ("idclients")
) 

LOCK TABLES "clients" WRITE;

INSERT INTO "clients" VALUES (2,'mahmoud','mahmoud@gmail.com','2123213124'),(3,'ahmed','ahmed@gmail.com','21232674676'),(4,'jack','jack22@gmail.com','123142423'),(5,'john33','john33@gmail.com','4534636346');

UNLOCK TABLES;


DROP TABLE IF EXISTS "dayoperations";

CREATE TABLE "dayoperations" (
  "id" INTEGER NOT NULL ,
  "book_name" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL,
  "days" INTEGER DEFAULT NULL,
  "date" date DEFAULT NULL,
  "client" TEXT DEFAULT NULL,
  "to" date DEFAULT NULL,
  PRIMARY KEY ("id")
) 


LOCK TABLES "dayoperations" WRITE;

INSERT INTO "dayoperations" VALUES (1,'space','Retrieve',4,'2019-01-08',NULL,NULL),(2,'python','Retrieve',4,'2019-01-09','mahmoud',NULL);

UNLOCK TABLES;


DROP TABLE IF EXISTS "publisher";

CREATE TABLE "publisher" (
  "idpublisher" INTEGER NOT NULL,
  "publisher_name" TEXT DEFAULT NULL,
  PRIMARY KEY ("idpublisher")
) 

LOCK TABLES "publisher" WRITE;

INSERT INTO "publisher" VALUES (1,'Ahmed Ali'),(2,'amal'),(3,'maati'),(4,'ahmed'),(5,'sayed');
/*!40000 ALTER TABLE "publisher" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
 ECREATE TABLE "users" (
  "idusers" INTEGER NOT NULL,
  "user_name" TEXT DEFAULT NULL,
  "user_email" TEXT DEFAULT NULL,
  "user_password" TEXT DEFAULT NULL,
  PRIMARY KEY ("idusers")
)
--
-- Dumping data for table "users"
--

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" VALUES (1,'mahmoud ahmed','pythondeveloper6@gmail.com','12345'),(2,'ahmed2','ahmed10@gmail.com','1234');
/*!40000 ALTER TABLE "users" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-09  1:00:55
