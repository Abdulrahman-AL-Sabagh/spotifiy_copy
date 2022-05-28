import PlayerLayout from "../components/playerLayout";


export default {
    title :"Player layout",
    component: PlayerLayout
}

export const  horizontal_Player_Layout = ()=>{ <PlayerLayout children={<p>"hi"</p>}  />}