<template>
  <h1>仕訳帳・元帳</h1>
  <h1>2023年(令和6年)6月期</h1>

  <div class="container">
    <table class="pl-4">
      <th>No</th>
      <th>日付</th>
      <th>貸方</th>
      <th>(円)</th>
      <th>借方</th>
      <th>(円)</th>
      <th>摘要</th>
      <th>取引先</th>
      <th>セグメント</th>
      <th>消費税率</th>
      <th>消費税</th>
      <th>締め年月</th>

      <tr v-for="(entry, index) in entries" class="border-b-4">
        <td>{{ index + 1 }}</td>
        <td>{{ entry.date }}</td>
        <td>{{ entry.credit }}</td>
        <td>{{ entry.accountIncTax }}</td>
        <td>{{ entry.debit }}</td>
        <td>{{ entry.accountIncTax }}</td>
        <td>{{ entry.summary }}</td>
        <td>{{ entry.partner }}</td>
        <td>{{ entry.segment }}</td>
        <td>{{ entry.taxRate }}</td>
        <td>{{ entry.tax }}</td>
        <td>
          <span v-if="entry.closedYm !== ''">
            {{ entry.closedYm }}
          </span>
          <span v-else>
            未
          </span>
        </td>
      </tr>
    </table>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const entries = ref([
 { date: '2023-08-01', credit: '現金及び預金', debit: '売上', accountIncTax: 11000, summary: '7月分点検売上', partner: 'A株式会社', taxRate: 0.1, tax: -1000, segment: 'ソフトウェア', closedYm: '202308' },
 { date: '2023-08-02', credit: '現金及び預金', debit: '売上', accountIncTax: 11000, summary: '7月分販売売上', partner: 'A株式会社', taxRate: 0.1, tax: -1000, segment: '無線', closedYm: '202308' },
 { date: '2023-08-03', credit: '現金及び預金', debit: '売上', accountIncTax: 11000, summary: '7月分販売売上', partner: 'A株式会社', taxRate: 0.1, tax: -1000, segment: 'デザイン', closedYm: '' },
 { date: '2023-08-04', credit: '現金及び預金', debit: '売上', accountIncTax: 11000, summary: '7月分販売売上', partner: 'A株式会社', taxRate: 0.1, tax: -1000, segment: 'その他', closedYm: '202308' },
])
</script>