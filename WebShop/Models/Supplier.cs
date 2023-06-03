using System;
using System.Collections.Generic;

#nullable disable

namespace WebShop.Models
{
    public partial class Supplier
    {
        public Supplier()
        {
            Products = new HashSet<Product>();
        }

        public int SupplierId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public int? ProductQuantity { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
