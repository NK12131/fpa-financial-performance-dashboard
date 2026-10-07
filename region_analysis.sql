-- Enterprise FP&A Dashboard
-- Region-wise Financial Analysis

-- 1. Revenue, Cost and Gross Profit by Region

SELECT
    r.region_name,
    SUM(b.actual_revenue) AS total_revenue,
    SUM(b.actual_cost) AS total_cost,
    SUM(b.actual_revenue - b.actual_cost) AS gross_profit
FROM public.budget_actuals b
JOIN public.regions r
    ON b.region_id = r.region_id
GROUP BY r.region_name
ORDER BY total_revenue DESC;


-- 2. Revenue Variance by Region

SELECT
    r.region_name,
    SUM(b.budgeted_revenue) AS budgeted_revenue,
    SUM(b.actual_revenue) AS actual_revenue,
    SUM(b.actual_revenue - b.budgeted_revenue) AS revenue_variance
FROM public.budget_actuals b
JOIN public.regions r
    ON b.region_id = r.region_id
GROUP BY r.region_name
ORDER BY revenue_variance DESC;


-- 3. Cost Variance by Region

SELECT
    r.region_name,
    SUM(b.budgeted_cost) AS budgeted_cost,
    SUM(b.actual_cost) AS actual_cost,
    SUM(b.actual_cost - b.budgeted_cost) AS cost_variance
FROM public.budget_actuals b
JOIN public.regions r
    ON b.region_id = r.region_id
GROUP BY r.region_name
ORDER BY cost_variance;