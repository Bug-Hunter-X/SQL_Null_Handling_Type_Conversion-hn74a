In SQL, a common oversight is neglecting to handle NULL values appropriately.  Consider a query involving a join on columns that might contain NULLs.  If not handled correctly, unexpected results or errors can arise.  For example:

```sql
SELECT * FROM employees e JOIN departments d ON e.department_id = d.id;
```

This query might omit employees without a `department_id` because NULL is not equal to any value, not even another NULL.  Using `IS NULL` or `IS NOT NULL` checks, or COALESCE or IFNULL functions to provide default values can resolve this.  Another common problem is related to implicit type conversions which can result in unexpected results or errors.

```sql
SELECT * FROM products WHERE price = '10';
```
If the `price` column is numeric, this may fail or yield unexpected results. Explicit type casting can resolve this. 