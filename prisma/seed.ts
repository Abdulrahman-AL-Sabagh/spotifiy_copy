import { PrismaClient } from "@prisma/client";
import bcrypt from "bcrypt";
import { setConfig } from "next/config";
import { MdUpdate } from "react-icons/md";
import { artistsData } from "./songsData";

const prisma = new PrismaClient();

const run = async () => {
  await Promise.all(
    artistsData.map(async (aritst) =>
      prisma.artist.upsert({
        where: { name: aritst.name },
        update: {},
        create: {
          name: aritst.name,
          song: {
            create: aritst.songs.map((song) => ({
              name: song.name,
              duration: song.duration,
              url: song.url,
            })),
          },
        },
      })
    ) /*  */
  );
  const salt = bcrypt.genSaltSync();
  const user = await prisma.user.upsert({
    where: { email: "user@test.com" },
    update: {},
    create: {
      email: "user@test.com",
      password: bcrypt.hashSync("password", salt),
    },
  });
  const songs = await prisma.song.findMany({});

  await Promise.all(
    new Array(10).fill(1).map(async (_, i) => {
      return prisma.playlist.create({
        data: {
          name: `Playlist # ${i + 1}`,
          user:{ 
            connect: {id: user.id}
          },
          songs: {
           connect: songs.map(song => ({id:song.id}))
          },
          
        },
      });
    })
  );
};

run()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => await prisma.$disconnect());
