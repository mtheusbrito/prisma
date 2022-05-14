import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
const result = await prisma.courses.update({
  where: {
    id: 'ad2d23f4-c41d-4d69-bfb7-e1e0f171c0a1',
  },
  data: {
    duration: 300
  }
});


console.log(result);
}

main();
