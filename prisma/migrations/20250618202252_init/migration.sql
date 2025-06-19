-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Variation" (
    "id" SERIAL NOT NULL,
    "colorName" TEXT,
    "color" TEXT NOT NULL,
    "colorCode" TEXT NOT NULL,
    "colorImage" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "Variation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "category" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "new" BOOLEAN NOT NULL,
    "sale" BOOLEAN NOT NULL,
    "rate" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "originPrice" INTEGER NOT NULL,
    "brand" TEXT NOT NULL,
    "sold" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "quantityPurchase" INTEGER NOT NULL,
    "sizes" TEXT[],
    "thumbImage" TEXT[],
    "images" TEXT[],
    "description" TEXT NOT NULL,
    "action" TEXT NOT NULL,
    "slug" TEXT NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_ProductToVariation" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_ProductToVariation_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE INDEX "_ProductToVariation_B_index" ON "_ProductToVariation"("B");

-- AddForeignKey
ALTER TABLE "_ProductToVariation" ADD CONSTRAINT "_ProductToVariation_A_fkey" FOREIGN KEY ("A") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToVariation" ADD CONSTRAINT "_ProductToVariation_B_fkey" FOREIGN KEY ("B") REFERENCES "Variation"("id") ON DELETE CASCADE ON UPDATE CASCADE;
