import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();


async function main(){

  const result = await prisma.modules.create({
    data: {
      description: 'Aprendendo firebase do 0',
      name: 'Aprendendo firebase',
      courses_modules: {
        create: {
          course: {
            connect: {
              id: 'ab67d9a9-e80e-48f9-b77e-4a07e45f313c',
            },
          },
        },
      },
    },
  });

  console.log(result)
}

main();