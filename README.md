# SQL Query Optimization Example

This project shows how to optimize a slow SQL query using **indexes and JOINs**.

## Problem
Original query with a subquery was slow on ~1M rows.

## Solution
- Added index on `customers(city)`
- Rewrote query using `JOIN`

## Results
- Original execution time: ~2.5s
- Optimized execution time: ~0.3s
