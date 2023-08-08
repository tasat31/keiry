// @generated automatically by Diesel CLI.

diesel::table! {
    journals (id) {
        id -> Nullable<Integer>,
        entried_at -> Date,
        credit -> Text,
        debit -> Text,
        account_inc_tax -> Integer,
        summary -> Text,
        partner -> Text,
        invoice_no -> Text,
        cost_type -> Text,
        segment -> Text,
        tax_rate -> Double,
        tax -> Integer,
        cash_in -> Text,
        fiscalTerm -> Text,
        closed_month -> Text,
    }
}
