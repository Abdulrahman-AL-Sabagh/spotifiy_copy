import PlayerLayout from '../components/playerLayout'
import "../index.css"

function MyApp({ Component, pageProps }) {
  return<>
  <PlayerLayout children={"hi"}/>
  <Component {...pageProps} />
</> }

export default MyApp
