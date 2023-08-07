import { createApp } from "vue";
import "./styles.css";
import App from "./App.vue";
import router from './router'

// Vue.use(VueRouter)

const app = createApp(App);
app.use(router)
app.mount("#app")
