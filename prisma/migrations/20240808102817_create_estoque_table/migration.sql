-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "categories" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Products" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "banner" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "category_id" TEXT NOT NULL,
    CONSTRAINT "Products_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Items" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "amount" INTEGER NOT NULL,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "product_id" TEXT NOT NULL,
    CONSTRAINT "Items_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Products" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
