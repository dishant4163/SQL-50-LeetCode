# [Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50)

## Problem Statement

You are given a table `Products` with the following columns:

- `product_id` (integer) - The ID of the product. This is the primary key of the table.
- `low_fats` (enum) - This indicates whether the product is low fat. The possible values are:
  - `'Y'` (Yes) – the product is low fat.
  - `'N'` (No) – the product is not low fat.
- `recyclable` (enum) - This indicates whether the product is recyclable. The possible values are:
  - `'Y'` (Yes) – the product is recyclable.
  - `'N'` (No) – the product is not recyclable.

You need to write an SQL query to find the IDs of products that are both low fat and recyclable.

### Table: Products

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

### Example:

#### Input:

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

#### Output:

| product_id |
|------------|
| 1          |
| 3          |

### Explanation:

- Only the products with `product_id` 1 and 3 are both low fat and recyclable. Thus, they are the ones that should be returned in the result.
