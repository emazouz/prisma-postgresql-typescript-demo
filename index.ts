import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();



async function main() {
    
    const user = await prisma.user.deleteMany(
    //     {
    //     data: {
    //         email: "test@test.com",
    //         name: "Test User"
    //     }
    // }
)
    console.log(user);
}

main().catch((e) => {
    console.error(e);
    process.exit(1);
}).finally(async () => {
    await prisma.$disconnect();
});




