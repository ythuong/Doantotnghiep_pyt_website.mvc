﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebShop.Models;

namespace WebShop.ModelViews
{
    public class HomeViewVM
    {
        public List<TinTuc> TinTucs { get; set; }
        public List<ProductHomeVM> Products { get; set; }
        //public QuangCao quangcao { get; set; }
    }
}
