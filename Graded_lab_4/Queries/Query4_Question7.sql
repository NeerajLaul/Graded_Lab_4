SELECT c.CAT_ID, c.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE
FROM category c
JOIN product p ON c.CAT_ID = p.CAT_ID
JOIN supplier_pricing sp ON p.PRO_ID = sp.PRO_ID
WHERE sp.SUPP_PRICE = (
    SELECT MIN(SUPP_PRICE)
    FROM supplier_pricing
    WHERE PRO_ID = p.PRO_ID
)
GROUP BY c.CAT_ID, c.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE;
