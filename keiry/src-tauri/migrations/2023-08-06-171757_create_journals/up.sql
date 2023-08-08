-- 仕訳テーブルを作成する
CREATE TABLE IF NOT EXISTS journals (
  id                INTEGER  PRIMARY KEY,
  entried_at        DATE          NOT NULL,  -- 日付
  credit            VARCHAR(256)  NOT NULL,  -- 貸方
  debit             VARCHAR(256)  NOT NULL,  -- 借方
  account_inc_tax   INT           NOT NULL DEFAULT 0,  -- 金額(税込)
  summary           TEXT          NOT NULL,  -- 摘要
  partner           TEXT          NOT NULL,  -- 取引先
  invoice_no        CHAR(13)      NOT NULL,  -- インボイス番号
  cost_type         VARCHAR(256)  NOT NULL,  -- 費目
  segment           VARCHAR(256)  NOT NULL,  -- セグメント
  tax_rate          DECIMAL(1,2)  NOT NULL DEFAULT 0.00,  -- 消費税率
  tax               INT           NOT NULL DEFAULT 0,  -- 消費税
  cash_in           CHAR(1)       NOT NULL DEFAULT '-',  -- キャシュイン/アウト
  fiscalTerm        CHAR(6)       NOT NULL DEFAULT '',  -- 会計期
  closed_month      CHAR(6)       NOT NULL DEFAULT ''  -- 締め年月
)
