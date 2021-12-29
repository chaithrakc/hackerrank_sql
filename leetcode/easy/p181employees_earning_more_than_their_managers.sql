/*
https://leetcode.com/problems/employees-earning-more-than-their-managers/

Problem Description:
        Table: Employee

        +-------------+---------+
        | Column Name | Type    |
        +-------------+---------+
        | id          | int     |
        | name        | varchar |
        | salary      | int     |
        | managerId   | int     |
        +-------------+---------+
        id is the primary key column for this table.
        Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
        

        Write an SQL query to find the employees who earn more than their managers.

        Return the result table in any order.

        The query result format is in the following example.
        Example 1:

        Input: 
        Employee table:
        +----+-------+--------+-----------+
        | id | name  | salary | managerId |
        +----+-------+--------+-----------+
        | 1  | Joe   | 70000  | 3         |
        | 2  | Henry | 80000  | 4         |
        | 3  | Sam   | 60000  | Null      |
        | 4  | Max   | 90000  | Null      |
        +----+-------+--------+-----------+
        Output: 
        +----------+
        | Employee |
        +----------+
        | Joe      |
        +----------+
        Explanation: Joe is the only employee who earns more than his manager.
*/

select emp.name as employee
from employee as emp inner join employee mgr on emp.managerId = mgr.id
where emp.salary > mgr.salary;

/*
input: {"headers": {"Employee": ["id", "name", "salary", "managerId"]}, "rows": {"Employee": [[1, "Joe", 70000, 3], [2, "Henry", 80000, 4], [3, "Sam", 60000, null], [4, "Max", 90000, null]]}}
output: {"headers": ["employee"], "values": [["Joe"]]}
expected: {"headers": ["Employee"], "values": [["Joe"]]}
*/