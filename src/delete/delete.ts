import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();


async function main(){
  const result = await prisma.coursesModules.delete({
    where: {
      id: 'ad18c00d-56b6-49b6-98cd-969f6cf009e2',
    },
  });
  console.log(result);
}

main();