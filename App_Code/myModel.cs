﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Category
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Category()
    {
        this.Purchases = new HashSet<Purchase>();
    }

    public int CategoryID { get; set; }
    public string CategoryName { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Purchase> Purchases { get; set; }
}

public partial class Customer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Customer()
    {
        this.Orders = new HashSet<Order>();
    }

    public int CustomerID { get; set; }
    public string CustomerName { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class Department
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Department()
    {
        this.Employees = new HashSet<Employee>();
    }

    public int dId { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Employee> Employees { get; set; }
}

public partial class EmpByDept
{
    public int eId { get; set; }
    public string empName { get; set; }
    public Nullable<decimal> Salary { get; set; }
    public Nullable<System.DateTime> DateOfJoin { get; set; }
    public string Photo { get; set; }
    public string dName { get; set; }
}

public partial class Employee
{
    public int eId { get; set; }
    public string Name { get; set; }
    public Nullable<System.DateTime> DOJ { get; set; }
    public Nullable<decimal> Salary { get; set; }
    public string Photo { get; set; }
    public Nullable<int> dId { get; set; }

    public virtual Department Department { get; set; }
}

public partial class Order
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Order()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int ONO { get; set; }
    public Nullable<int> CustomerID { get; set; }
    public Nullable<System.DateTime> ODate { get; set; }
    public Nullable<decimal> GrandTotal { get; set; }
    public Nullable<System.DateTime> ShippedDate { get; set; }

    public virtual Customer Customer { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
}

public partial class Order_Subtotal
{
    public int ONO { get; set; }
    public Nullable<decimal> Subtotal { get; set; }
}

public partial class OrderDetail
{
    public int ONO { get; set; }
    public string PID { get; set; }
    public Nullable<int> SaleQty { get; set; }
    public Nullable<decimal> SalePrice { get; set; }
    public Nullable<decimal> SaleTotal { get; set; }

    public virtual Order Order { get; set; }
    public virtual Stock Stock { get; set; }
}

public partial class Purchase
{
    public int PNO { get; set; }
    public string PID { get; set; }
    public string PName { get; set; }
    public Nullable<decimal> UPrice { get; set; }
    public Nullable<int> Qty { get; set; }
    public Nullable<System.DateTime> PDate { get; set; }
    public Nullable<int> RLevel { get; set; }
    public Nullable<int> CategoryID { get; set; }

    public virtual Category Category { get; set; }
}

public partial class Sales_Totals_by_Amount
{
    public Nullable<decimal> SaleAmount { get; set; }
    public int ONO { get; set; }
    public Nullable<System.DateTime> ODate { get; set; }
}

public partial class Stock
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Stock()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public string PID { get; set; }
    public Nullable<int> SQty { get; set; }
    public Nullable<int> RLevel { get; set; }
    public Nullable<decimal> SalesPrice { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
}

public partial class UserDetail
{
    public string UserID { get; set; }
    public string UserPass { get; set; }
    public string UserRole { get; set; }
}

public partial class vw_StockInfo
{
    public string PID { get; set; }
    public string PName { get; set; }
    public Nullable<int> SQty { get; set; }
    public Nullable<decimal> SalesPrice { get; set; }
}

public partial class CategoriesGetAll_Result
{
    public int CategoryID { get; set; }
    public string CategoryName { get; set; }
}

public partial class CategoriesGetRecord_Result
{
    public int CategoryID { get; set; }
    public string CategoryName { get; set; }
}

public partial class CustomersGetAll_Result
{
    public int CustomerID { get; set; }
    public string CustomerName { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
}

public partial class CustomersGetRecord_Result
{
    public int CustomerID { get; set; }
    public string CustomerName { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
}

public partial class OrderDetailsGetAll_Result
{
    public int ONO { get; set; }
    public string PID { get; set; }
    public Nullable<int> SaleQty { get; set; }
    public Nullable<decimal> SalePrice { get; set; }
    public Nullable<decimal> SaleTotal { get; set; }
}

public partial class OrderDetailsGetRecord_Result
{
    public int ONO { get; set; }
    public string PID { get; set; }
    public Nullable<int> SaleQty { get; set; }
    public Nullable<decimal> SalePrice { get; set; }
    public Nullable<decimal> SaleTotal { get; set; }
}

public partial class OrdersGetAll_Result
{
    public int ONO { get; set; }
    public Nullable<int> CustomerID { get; set; }
    public Nullable<System.DateTime> ODate { get; set; }
    public Nullable<decimal> GrandTotal { get; set; }
    public Nullable<System.DateTime> ShippedDate { get; set; }
}

public partial class OrdersGetRecord_Result
{
    public int ONO { get; set; }
    public Nullable<int> CustomerID { get; set; }
    public Nullable<System.DateTime> ODate { get; set; }
    public Nullable<decimal> GrandTotal { get; set; }
    public Nullable<System.DateTime> ShippedDate { get; set; }
}
