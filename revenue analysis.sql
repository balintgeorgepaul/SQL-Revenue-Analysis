with RevenueByCategory as (
    select p.category
          ,sum(od.price * od.quantity) as total_revenue
    from order_details od
    join products p on od.product_id = p.product_id
    join orders o on od.order_id = o.order_id
    group by p.category
),
TotalRevenue as (
    select sum(total_revenue) as grand_total
    from RevenueByCategory
),

CategoryRevenuePercentage as (
    select 
        r.category,
        r.total_revenue,
        (r.total_revenue * 100 / t.grand_total) as revenue_percentage
    from RevenueByCategory r
    cross join TotalRevenue t
)

select distinct 
    u.[user_id],
    u.[name] as [user_name],
    u.email,
    c.category,
    c.total_revenue,
    format(round(c.revenue_percentage, 2), 'n2') + '%' as revenue_percentage
from users u
join orders o on u.user_id = o.user_id
join CategoryRevenuePercentage c on o.order_id in (
        select order_id
        from order_details od
        where od.order_id = o.order_id
    )