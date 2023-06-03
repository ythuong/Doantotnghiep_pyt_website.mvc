﻿using System;
using System.Collections.Generic;

#nullable disable

namespace WebShop.Models
{
    public partial class Product
    {
        public Product()
        {
            AttributesPrices = new HashSet<AttributesPrice>();
            Comments = new HashSet<Comment>();
            Orders = new HashSet<Order>();
        }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ShortDesc { get; set; }
        public string Description { get; set; }
        public int? CatId { get; set; }
        public int? Price { get; set; }
        public int? Discount { get; set; }
        public string Thumb { get; set; }
        public string Video { get; set; }
        public DateTime? DateCreated { get; set; }
        public DateTime? DateModified { get; set; }
        public bool? BestSellers { get; set; }
        public bool? HomeFlag { get; set; }
        public bool? Active { get; set; }
        public string Tags { get; set; }
        public string Title { get; set; }
        public string Alias { get; set; }
        public string MetaDesc { get; set; }
        public string MetaKey { get; set; }
        public int? UnitsInStock { get; set; }
        public string Chatlieu { get; set; }
        public string Songan { get; set; }
        public string Kichco { get; set; }
        public string Image { get; set; }
        public int? SupplierId { get; set; }

        public virtual Category Cat { get; set; }
        public virtual Supplier Supplier { get; set; }
        public virtual ICollection<AttributesPrice> AttributesPrices { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
