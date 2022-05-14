import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.books.create({
    data: {
      name: 'Arquitetura limpa',
      author_id: 'ffa2e833-3d5e-476c-bb52-42237c9bd1a0',
    },
  });

  console.log(result);
}

main();
