import React from "react";
import NextLink from "next/link";
import {
  MdHome,
  MdSearch,
  MdLibraryMusic,
  MdPlaylistAdd,
  MdFavorite,
} from "react-icons/md";

const icons = {
  MdHome,
  MdSearch,
  MdLibraryMusic,
  MdPlaylistAdd,
  MdFavorite,
};
const icons2 = {};

interface MenuItem {
  label: string;
  path: string;
  icon: keyof typeof icons | keyof typeof icons2;
}

const Sidebar = () => {
  const menuItems: Array<MenuItem> = [
    { path: "/", icon: "MdHome", label: "Home" },
    { path: "/search", icon: "MdSearch", label: "Search" },
    { path: "/library", icon: "MdLibraryMusic", label: "Library" },
    { path: "/", icon: "MdPlaylistAdd", label: "Playlist add" },
    { path: "/favorites", icon: "MdLibraryMusic", label: "Favoirtes" },
  ];

  const playlists = new Array(30).fill(0).map((_, i) => `Playlist ${i + 1}.`);

  return (
    <div className="w-full h-[calc(100vh-100px)] bg-black px-[5px] text-gray-400">
      <div className="py-[20px]"></div>
      <div className="w-[120px] mb-[20px] px-[20px]">
        <p>Logo</p>
      </div>
      <div className="mb-[20px]">
        <ul className="leading-3">
          {menuItems.map((item) => {
            const Icon = icons[item.icon];
            return (
              <li key={item.path} className="px-[20px] text-base my-[10px]">
                <NextLink
                  href={item.path}
                  children={
                    <p className="flex items-center gap-2">
                      <Icon className="text-white" /> {item.label}
                    </p>
                  }
                />
              </li>
            );
          })}
        </ul>
      </div>

      <div className="h-[66%] overflow-y-auto py-[20px]">
        <ul className="leading-7">
          {playlists.map(playlist => (
            <li className="px-[20px] " key={playlist}>
              <NextLink href="/">
                {playlist}
              </NextLink>

            </li>
          ))}
        </ul>
      </div>
    </div>
  );
};

export default Sidebar;
