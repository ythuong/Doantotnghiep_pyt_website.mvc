using AspNetCoreHero.ToastNotification.Abstractions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using PagedList.Core;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using WebShop.Models;
using WebShop.ModelViews;

namespace WebShop.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        private readonly webshopContext _context;
        public INotyfService _notifyService { get; }
        public HomeController(ILogger<HomeController> logger, webshopContext context, INotyfService notifyService)
        {
            _logger = logger;
            _context = context;
            _notifyService = notifyService;
        }

        public IActionResult Index(int? page, string searchString, string currentFilter, int? pageNumber)
        {
            HomeViewVM model = new HomeViewVM();

            //List<Product> lsProducts = new List<Product>();
            var lsProducts = _context.Products.AsNoTracking()
                .Where(x => x.Active == true)
                .OrderByDescending(x => x.DateCreated)
                .ToList();
            List<ProductHomeVM> lsProductView = new List<ProductHomeVM>();
            var lsCats = _context.Categories
                .AsNoTracking()
                .Where(x => x.Published == true)
                .ToList();
            foreach (var item in lsCats)
            {
                ProductHomeVM productHome = new ProductHomeVM();
                productHome.category = item;
                productHome.lsProducts = lsProducts.Where(x => x.CatId == item.CatId).ToList();
                lsProductView.Add(productHome);
            }

            var TinTuc = _context.TinTucs
                .AsNoTracking()
                .Where(x => x.Published == true)
                .OrderByDescending(x => x.CreatedDate)
                .Take(3)
                .ToList();
            model.Products = lsProductView;
            model.TinTucs = TinTuc;
            //PagedList<Product> models = new PagedList<Product>(lsProducts, pageNumber, pageSize);
            ViewBag.AllProducts = lsProducts;



            return View(model);
        }


        public IActionResult DanhMuc(int page = 1, int CatID = 0)
        {
            var pageNumber = page;
            var pageSize = 6;
            List<Product> lsProducts = new List<Product>();

            if (CatID != 0)
            {
                lsProducts = _context.Products
                 .AsNoTracking()
                 .Where(x => x.CatId == CatID)
                 .Include(x => x.Cat)
                 .OrderByDescending(x => x.ProductId).ToList();
            }
            else
            {
                lsProducts = _context.Products
                .AsNoTracking()
                .Include(x => x.Cat)
                .OrderByDescending(x => x.ProductId).ToList();
            }
            var lsCats = _context.Categories
                .AsNoTracking()
                .Where(x => x.Published == true)
                .ToList();
            PagedList<Product> models = new PagedList<Product>(lsProducts.AsQueryable(), pageNumber, pageSize);
            ViewBag.CurrentCateID = CatID;
            ViewBag.CurrentPage = pageNumber;

            ViewData["DanhMuc"] = new SelectList(_context.Categories, "CatId", "CatName", CatID);
            return View(models);
        }
        public IActionResult Filtter(int CatID = 0)
        {
            var url = $"/Admin/AdminProducts?CatID={CatID}";
            if (CatID == 0)
            {
                url = $"/Admin/AdminProducts";
            }
            return Json(new { status = "success", redirectUrl = url });
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult About()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
