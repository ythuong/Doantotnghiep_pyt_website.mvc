using AspNetCoreHero.ToastNotification.Abstractions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebShop.Areas.Admin.Models;
using WebShop.Models;

namespace WebShop.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class HomeAdminController : Controller
    {
        private readonly webshopContext _context;
        public INotyfService _notifyService { get; }
        public HomeAdminController(webshopContext context, INotyfService notifyService)
        {
            _context = context;
            _notifyService = notifyService;
        }

        //[Route("adminindex.html", Name = "AdminIndex")]
        [Authorize]
        public IActionResult Index()
        {

            DashBoardViewModel model = new DashBoardViewModel();
            model.tongdh = _context.Orders.Count().ToString();
            model.tongdhchuaduyet = _context.Orders.Count(x => x.TransactStatusId == 2).ToString();
            model.tongnguoidung = _context.Customers.Count().ToString();
            model.tongsp = _context.Products.Count().ToString();
            return View(model);
        }

        public IActionResult menu()
        {
           
            return View();
        }

    }
}
