using AspNetCoreHero.ToastNotification.Abstractions;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using WebShop.Models;

namespace WebShop.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AdminLoginController : Controller
    {
        private readonly webshopContext _context;
        public INotyfService _notifyService { get; }
        public AdminLoginController(webshopContext context, INotyfService notifyService)
        {
            _context = context;
            _notifyService = notifyService;
        }
        [HttpGet]
        public ActionResult AdminLogin()
        {
            //if() dang nhap thanh cong, thi khong cho vao trang nay

            //else

            return View();
        }
        //[Bind] 
        [HttpPost]
        public ActionResult AdminLogin([FromForm] Account account)
        {
            // username = anet  
            // var user = new Users().GetUsers().Where(u => u.UserName == userModel.UserName).Where(u => u.Password == userModel.Password).SingleOrDefault();

            var user = _context.Accounts.Where(u => u.Email == account.Email).Where(u => u.Password == account.Password).SingleOrDefault();


            if (user != null)
            {
                if (user.RoleId == 3)
                {
                    TempData["ErrorMessage"] = "Tài khoản bị khóa vui lòng lien hệ quản trị viên";
                    return Redirect("/Admin/AdminLogin/AdminLogin");
                }
                else
                {
                    var userClaims = new List<Claim>()
                {
                    new Claim("FullName", user.FullName),
                    new Claim("Email", user.Email),
                    new Claim("Phone", user.Phone.ToString()),
                    new Claim("RoleId", user.RoleId.ToString()),
                    new Claim(ClaimTypes.Name, user.FullName.ToString()),

                 };

                    var userIdentity = new ClaimsIdentity(userClaims, "User Identity");

                    var userPrincipal = new ClaimsPrincipal(new[] { userIdentity });
                    HttpContext.SignInAsync(userPrincipal);
                    HttpContext.Session.SetString("AccountId", user.AccountId.ToString());
                    _notifyService.Success("Đăng nhập thành công");

                    return Redirect("/Admin/HomeAdmin");
                }




            }
            TempData["ErrorMessage"] = "Sai thông tin tài khoản hoặc mật khẩu";
            return Redirect("/Admin/AdminLogin/AdminLogin");
        }
        [AllowAnonymous]
        public ActionResult AccessDeny()
        {
            return View();
        }

        public ActionResult Getuser()
        {
            var a = HttpContext.User;

            string b = a.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Email).Value;
            string e = a.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Name).Value;
            string f = a.Claims.FirstOrDefault(c => c.Type == ClaimTypes.DateOfBirth).Value;
            string g = a.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Role).Value;
            ViewBag.Gmail = b;
            ViewBag.Name = e;
            ViewBag.Date = f;
            ViewBag.Role = g;
            return View();
        }
        public async Task<IActionResult> LogOut()
        {
            await HttpContext.SignOutAsync();
            ////SignOutAsync is Extension method for SignOut    
            //await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            ////Redirect to home page  


            _notifyService.Error("Đăng xuất thành công");

            return Redirect("/Admin/AdminLogin/AdminLogin");
        }
        //public IActionResult Index()
        //{
        //    return View();
        //}
    }
}
