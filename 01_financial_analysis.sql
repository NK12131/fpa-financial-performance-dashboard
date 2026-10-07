-- Enterprise FP&A Dashboard
-- Financial Analysis Queries

-- 1. Total Revenue
SELECT
    SUM(actual_revenue) AS total_revenue
FROM public.budget_actuals;


-- 2. Total Cost
SELECT
    SUM(actual_cost) AS total_cost
FROM public.budget_actuals;


-- 3. Total Gross Profit
SELECT
    SUM(actual_revenue - actual_cost) AS gross_profit
FROM public.budget_actuals;


-- 4. Revenue Variance
SELECT
    SUM(actual_revenue - budgeted_revenue) AS revenue_variance
FROM public.budget_actuals;


-- 5. Cost Variance
SELECT
    SUM(actual_cost - budgeted_cost) AS cost_variance
FROM public.budget_actuals;