<template>
  <h1>合計残高資産表</h1>
  <h1>2023年(令和6年)6月期</h1>

  <div class="container">
    <table>
      <th></th>
      <th class="text-left pl-2">勘定科目</th>
      <th>前期末</th>
      <th>借方</th>
      <th>貸方</th>
      <th>借方(残高)</th>
      <th>貸方(残高)</th>
      <th>合計残高</th>

      <tr v-for="(entry) in entries" class="border-b-4">
        <td class="text-left pl-2">{{ entry.categoryName }}</td>
        <td class="text-left pl-2">{{ entry.item }}</td>
        <td class="text-right">{{ entry.previousBalance }}</td>
        <td class="text-right">{{ entry.debit }}</td>
        <td class="text-right">{{ entry.credit }}</td>
        <td class="text-right">{{ entry.debitBalance }}</td>
        <td class="text-right">{{ entry.creditBalance }}</td>
        <td class="text-right">{{ entry.trialBalance }}</td>
      </tr>
    </table>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const entries = ref([
 { categorry: 'LA', categoryName: '1.流動資産', item: '現金及び預金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LA', categoryName: '', item: '受取手形', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LA', categoryName: '', item: '売掛金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LA', categoryName: '', item: '製品及び商品', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LA', categoryName: '', item: '有価証券', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LA', categoryName: '', item: '前払費用', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '2.固定資産', item: '建物', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '建物付属設備', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '構築物', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '機械装置', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '車両運搬具', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '工具・器具・備品', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '土地', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: 'ソフトウェア', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'FA', categoryName: '', item: '建設仮勘定', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PA', categoryName: '3.繰延資産', item: '', previousBalance: 0, debit: 0, credit: 0, debitBalance: 0, creditBalance: 0, trialBalance: 0 },
 { categorry: 'LL', categoryName: '4.流動負債', item: '支払手形', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LL', categoryName: '', item: '買掛金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LL', categoryName: '', item: '賞与引当金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LL', categoryName: '5.固定負債', item: '長期借入金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'LL', categoryName: '', item: '退職給付引当金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'CA', categoryName: '6.資本', item: '資本金', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '7.損益', item: '売上高', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '', item: '売上原価', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '', item: '販売費及び一般管理費', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '', item: '研究開発費', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '', item: '受取利息', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
 { categorry: 'PL', categoryName: '', item: '支払利息', previousBalance: 300000, debit: 100000, credit: 20000, debitBalance: 0, creditBalance: 200000, trialBalance: 200000 },
])
</script>