<template>
  <h1>決算書</h1>
  <h1>2023年(令和6年)6月期</h1>

  <div class="container">
    <!-- 貸借対照表: 借方 -->
    <table>
      <th>項目</th>
      <th>金額</th>
      <tr>
        <td>1. 流動資産</td><td>現金及び預金</td><td></td>
      </tr>
    </table>
    <!-- 貸借対照表: 貸方 -->
    <table>
      <th>項目</th>
      <th>金額</th>
      <tr>
        <td>1. 流動資産</td><td>現金及び預金</td><td></td>
      </tr>
    </table>
    <!-- 損益計算書 -->
    <table>
      <th></th>
      <th>項目</th>
      <th></th>
      <th>金額</th>

      <tr>
        <td></td><td>売上高</td><td></td><td></td>
      </tr>
    </table>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

// これはAPIで取得する
const balanceSheet = ref({
  '流動資産': [
    { code: 'LA01', item: '現金及び預金', amount: 100000 },
    { code: 'LA02', item: '受取手形', ammount: 0},
    { code: 'LA03', item: '売掛金', ammount: 0},
    { code: 'LA04', item: '前払費用', ammount: 0},
    { code: 'LA05', item: '未収収益', ammount: 0},
    { code: 'LA06', item: '貸倒引当金', ammount: 0},
  ],
  '固定資産': {
    '有形固定資産': [
      { code: 'FA01', item: '建物', amount: 100000 },
      { code: 'FA02', item: '建物付属設備', ammount: 0},
      { code: 'FA03', item: '構築物', ammount: 0},
      { code: 'FA04', item: '機械装置', ammount: 0},
      { code: 'FA05', item: '車両運搬具', ammount: 0},
      { code: 'FA06', item: '工具・器具・備品', ammount: 0},
      { code: 'FA07', item: '土地', ammount: 0},
    ],
    '無形固定資産': [
      { code: 'FA08', item: 'ソフトウェア', amount: 100000 },
    ],
    'その他': [
      { code: 'FA09', item: '建設仮勘定', amount: 100000 },
    ],
  },
  '流動負債': [
    { code: 'LL01', item: '支払手形', amount: 0 },
    { code: 'LL02', item: '買掛金', ammount: 0},
    { code: 'LL03', item: '短期借入金', ammount: 0},
    { code: 'LL04', item: '未払金', ammount: 0},
    { code: 'LL05', item: '預り金', ammount: 0},
    { code: 'LL06', item: '未払費用', ammount: 0},
    { code: 'LL07', item: '未払法人税等', ammount: 0},
    { code: 'LL08', item: '未払消費税', ammount: 0},
    { code: 'LL09', item: '前受収益', ammount: 0},
    { code: 'LL10', item: '未払賞与', ammount: 0},
  ],
  '固定負債': [
    { code: 'FL01', item: '長期借入金', amount: 0 },
    { code: 'FL02', item: '退職給付引当金', ammount: 0},
    { code: 'FL03', item: '減価償却費累計額', ammount: 0},
    { code: 'FL04', item: 'その他', ammount: 0},
  ],
  '資本': [
    { code: 'CP01', item: '資本金', amount: 14000000 },
    { code: 'CP02', item: '資本剰余金', ammount: 0},
    { code: 'CP03', item: '利益剰余金', ammount: 0},
  ],
})

// これはAPIで取得する
const profitLossSheet = ref({
  '売上総利益': [
    { code: 'PL01', item: '売上高', amount: 200000 },
    { code: 'PL02', item: '売上原価', amount: 400000 },
  ],
  '営業利益': [
    { code: 'PL04', item: '販売費及び一般管理費', amount: 10000 },
    { code: 'PL05', item: '研究開発費', amount: 10000 },
  ],
  '営業外収益': [
    { code: 'PL07', item: '受取利息', amount: 0 },
    { code: 'PL08', item: '受取配当金', amount: 0 },
    { code: 'PL09', item: '雑収入', amount: 0 },
  ],
  '営業外費用': [
    { code: 'PL07', item: '支払利息', amount: 0 },
    { code: 'PL08', item: '手形譲渡損', amount: 0 },
    { code: 'PL09', item: '雑支出', amount: 0 },
  ],
  '特別利益': [
    { code: 'PL10', item: '固定資産売却益', amount: 0 },
    { code: 'PL11', item: '投資有価証券売却益', amount: 0 },
    { code: 'PL12', item: '前期損益修正益', amount: 0 },
  ],
  '特別損失': [
    { code: 'PL13', item: '固定資産売却損', amount: 0 },
    { code: 'PL14', item: '減損損失', amount: 0 },
    { code: 'PL15', item: '災害による損失', amount: 0 },
  ],
  '法人税等': [
    { code: 'PL16', item: '法人税、住民税及び事業税', amount: 0 },
    { code: 'PL17', item: '法人税等調整額', amount: 0 },
  ],
})
</script>