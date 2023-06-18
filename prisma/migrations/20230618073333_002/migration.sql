-- CreateTable
CREATE TABLE "Posts" (
    "id" TEXT NOT NULL,
    "authorID" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "excerpt" TEXT NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'draft',
    "password" TEXT,
    "slug" TEXT NOT NULL,

    CONSTRAINT "Posts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LinkPosts" (
    "id" TEXT NOT NULL,
    "link" TEXT NOT NULL,
    "postID" TEXT NOT NULL,

    CONSTRAINT "LinkPosts_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Posts_slug_key" ON "Posts"("slug");

-- AddForeignKey
ALTER TABLE "Posts" ADD CONSTRAINT "Posts_authorID_fkey" FOREIGN KEY ("authorID") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LinkPosts" ADD CONSTRAINT "LinkPosts_postID_fkey" FOREIGN KEY ("postID") REFERENCES "Posts"("id") ON DELETE CASCADE ON UPDATE CASCADE;
