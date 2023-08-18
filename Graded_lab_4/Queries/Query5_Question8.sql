SELECT p.PRO_ID, p.PRO_NAME
FROM product p
JOIN supplier_pricing sp ON p.PRO_ID = sp.PRO_ID
JOIN order_ o ON sp.PRICING_ID = o.PRICING_ID
WHERE o.ORD_DATE > '2021-10-05';
