import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.coursesModules.create({
    data: {
      fk_id_course: 'ab67d9a9-e80e-48f9-b77e-4a07e45f313c',
      fk_id_module: '8bcbfc59-0082-4abb-99d2-07f4510efcee',
    },
  });

  console.log(result);
}

main();
