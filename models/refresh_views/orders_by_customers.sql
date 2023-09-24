SELECT cs.c_custkey as customer_key,o_orderkey as order_number,
count(li.l_linenumber) as total_products,max(l_discount) as max_discount
 FROM 
{{ ref('customer_raw') }} cs
left join {{ ref('orders_raw') }} o on cs.c_custkey=o.o_custkey
left join {{ ref('lineitem_raw') }} li on li.l_orderkey=o.o_orderkey
group by c_custkey,o_orderkey
