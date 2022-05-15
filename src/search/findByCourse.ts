import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();



async function main(){
  const result = await prisma.courses.findMany({
    where: {
      id: '799c9265-9af2-4ba9-be98-6c240eb1cc13',
    },
    include:{
      courses_modules: true,

    }
  });


  console.log(JSON.stringify(result))
}

main()