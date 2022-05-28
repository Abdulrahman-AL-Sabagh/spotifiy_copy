import React from "react";
import Sidebar from "./sidebar";

const PlayerLayout = ({ children }) => {
  return <div className="w-full h-full ">
      <div className="absolute top-0 w-[250px] left-0  ">

        <Sidebar/>
      </div>
      <div className="ml-[250px] mb-[100px]">

    {children}
      </div>

      <div className="absolute left-0 bottom-0">

        player
      </div>
  </div>;
};

export default PlayerLayout;
