<template>
  <div class="container">
    <h1>Welcome to Keiry!</h1>
    <h2>中小事業者向け会計・ファイナンスアプリ</h2>

    <div class="row row-menu">
      <button class="btn-menu">
        <router-link to="/journal">仕訳帳・元帳</router-link>
      </button>
      <button class="btn-menu">
        <router-link to="/trial-balance">合計残高試算表</router-link>
      </button>
      <button class="btn-menu">
        <router-link to="/statement">決算書</router-link>
      </button>
    </div>

    <div class="row row-menu">
      <button class="btn-menu">
        <router-link to="finance-plan">資金計画表</router-link>
      </button>
      <button class="btn-menu">
        <router-link to="budget-management">予実管理</router-link>
      </button>
      <button class="btn-menu">
        <router-link to="history">過去の財務諸表</router-link>
      </button>
    </div>

    <div class="keyword-input">
      <Greet />
    </div>

    <router-view></router-view>

    <p class="copyright">© 2023 Powered by XXXX LLC</p>
  </div>
</template>

<script setup lang="ts">
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
import Greet from "./components/Greet.vue";


</script>


<style scoped>
.row-menu {
  padding-top: 15px;
}
.btn-menu {
  width: 20%;
  margin-left: 10px;
  margin-right: 10px;
}

.btn-menu:hover {
  color: #747bff;
  filter: drop-shadow(0 0 0.25em #747bff);
}

.keyword-input {
  padding-top: 20px;
}
</style>
