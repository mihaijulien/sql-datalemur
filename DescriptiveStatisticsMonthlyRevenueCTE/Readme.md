
### Calculating descriptive statistics for monthly revenue by product

#### Business problem:
The leadership team at your company is making goals for 2023 and wants to understand how much revenue each of the product subscriptions, basic and expert, are generating each month. More specifically, they want to understand the distribution of monthly revenue across the past year, 2022.
 
They've asked you the following questions:
 
1. How much revenue does each product usually generate each month?
2. Which product had the most success throughout all of last year? 
3. Did either product fluctuate greatly each month or was the month-to-month trend fairly consistent?
 
Since the request is for a board meeting tomorrow, you decide that a granular report of monthly revenue by product probably isn't the best deliverable, because a large table of numbers isn't great for gleaning quick insights. Instead, you decide to calculate something more high-level: the minimum, maximum, average, and standard deviation of monthly revenue for each product for the year 2022. This will equip leadership with a quick summary of the revenue and consistency that each product provided last year.
 
With this tight of a deadline, you know you've got to get to work!
#### Task: 
Using a CTE and the subscriptions and products tables, calculate the:

- minimum monthly revenue: min_rev 
- maximum monthly revenue: max_rev
- average monthly revenue: avg_rev
- standard deviation of monthly revenue: std_dev_rev

for each product, ProductName.

![datamodel](main-data-model.png)

### Result:

```

------------------------------------------------------------------
| PRODUCTNAME | MIN_REV | MAX_REV | AVG_REV | STD_DEV_REV        |
------------------------------------------------------------------
| Basic       | 500     | 28000   | 13188   | 8123.763642197237  |
| Expert      | 3000    | 46000   | 18000   | 13796.134724383252 |
------------------------------------------------------------------
```