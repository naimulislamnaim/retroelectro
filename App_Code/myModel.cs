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

public partial class Brand
{
    public int Id { get; set; }
    public string BrandName { get; set; }
    public Nullable<int> SupplierId { get; set; }
    public string BrandImage { get; set; }
    public string BrandDescription { get; set; }

    public virtual Supplier Supplier { get; set; }
}

public partial class Category
{
    public int Id { get; set; }
    public string CategoryName { get; set; }
    public string CategoryDescription { get; set; }
}

public partial class CustomerOrder
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public int Id { get; set; }
    public Nullable<int> CustomerId { get; set; }
    public Nullable<System.DateTime> OrderDate { get; set; }
    public Nullable<decimal> GranTotal { get; set; }
}

public partial class Division
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Division()
    {
        this.Users = new HashSet<User>();
    }

    public int Id { get; set; }
    public string DivisionName { get; set; }
    public string DivisionDescription { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<User> Users { get; set; }
}

public partial class Order
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Order()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int Id { get; set; }
    public Nullable<int> CustomerId { get; set; }
    public Nullable<System.DateTime> OrderDate { get; set; }
    public Nullable<decimal> GranTotal { get; set; }
    public string DeliveryStatus { get; set; }

    public virtual User User { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
}

public partial class OrderDetail
{
    public int Id { get; set; }
    public Nullable<int> OrderId { get; set; }
    public Nullable<int> ProductId { get; set; }
    public Nullable<decimal> Price { get; set; }
    public Nullable<int> Quantity { get; set; }
    public Nullable<decimal> Total { get; set; }

    public virtual Order Order { get; set; }
    public virtual Product Product { get; set; }
}

public partial class Product
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Product()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int Id { get; set; }
    public string ProductName { get; set; }
    public string ProductDescription { get; set; }
    public Nullable<int> SupplierId { get; set; }
    public string CategoryName { get; set; }
    public Nullable<int> Quantity { get; set; }
    public Nullable<decimal> Price { get; set; }
    public string ProductImage { get; set; }
    public string BrandImage { get; set; }
    public string WarrentyType { get; set; }
    public string BrandName { get; set; }
    public string SKU { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    public virtual Supplier Supplier { get; set; }
}

public partial class Supplier
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Supplier()
    {
        this.Brands = new HashSet<Brand>();
        this.Products = new HashSet<Product>();
    }

    public int Id { get; set; }
    public string SupplierName { get; set; }
    public string SupplierEmail { get; set; }
    public string SupplierPhone { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Brand> Brands { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Product> Products { get; set; }
}

public partial class User
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public User()
    {
        this.Orders = new HashSet<Order>();
    }

    public int Id { get; set; }
    public string Email { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Password { get; set; }
    public string Role { get; set; }
    public Nullable<System.DateTime> AccountCreateDate { get; set; }
    public string AddressLine1 { get; set; }
    public string AddressLine2 { get; set; }
    public string PostCode { get; set; }
    public string Phone { get; set; }
    public Nullable<int> DivisionId { get; set; }

    public virtual Division Division { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class UserFromDivision
{
    public int Id { get; set; }
    public string FirstName { get; set; }
    public string DivisionName { get; set; }
}

public partial class UserFromDivisionSecond
{
    public int Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string DivisionName { get; set; }
}

public partial class Warrenty
{
    public int Id { get; set; }
    public string WarrentyType { get; set; }
}