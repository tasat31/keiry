import { createRouter, createWebHistory } from 'vue-router'
import Journal from './pages/Journal.vue'
import TrialBalance from './pages/TrialBalance.vue'
import Statement from './pages/Statement.vue'
import FinancePlan from './pages/FinancePlan.vue'
import BudgetManagement from './pages/BudgetManagement.vue'
import History from './pages/History.vue'

const routes: {path: string, component: any}[] = [
  { path: '/journal', component: Journal },
  { path: '/trial-balance', component: TrialBalance },
  { path: '/statement', component: Statement },
  { path: '/finance-plan', component: FinancePlan },
  { path: '/budget-management', component: BudgetManagement },
  { path: '/history', component: History },
]
      
const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router