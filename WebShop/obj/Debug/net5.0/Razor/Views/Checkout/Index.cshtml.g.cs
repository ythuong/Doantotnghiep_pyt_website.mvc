#pragma checksum "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5489f4596cf07152a753e2659f518164d5a574f6"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Checkout_Index), @"mvc.1.0.view", @"/Views/Checkout/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\_ViewImports.cshtml"
using WebShop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\_ViewImports.cshtml"
using WebShop.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5489f4596cf07152a753e2659f518164d5a574f6", @"/Views/Checkout/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d3df3320de4c2e3d10181e18c8e069dc52a6b106", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Checkout_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<WebShop.ModelViews.MuaHangVM>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/banner/baner3.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:auto;height:500px"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("placeholder", new global::Microsoft.AspNetCore.Html.HtmlString("Họ và tên"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "text", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form-control"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("placeholder", new global::Microsoft.AspNetCore.Html.HtmlString("Số điện thoại"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("placeholder", new global::Microsoft.AspNetCore.Html.HtmlString("Địa chỉ nhận hàng"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/shipping/qr.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/shipping/momo.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_9 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Checkout", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_10 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_11 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
  
    ViewData["Title"] = "Mua hàng";
    Layout = "~/Views/Shared/_Layout.cshtml";
    List<WebShop.ModelViews.CartItem> Carts = ViewBag.GioHang;

#line default
#line hidden
#nullable disable
            WriteLiteral("<main class=\"main-content\">\r\n    <div class=\"breadcrumb-area breadcrumb-height text-center\">\r\n        <div class=\"container h-100\">\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5489f4596cf07152a753e2659f518164d5a574f68146", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
            <div class=""row h-100"">
                <div class=""col-lg-12"">
                </div>
            </div>
        </div>
    </div>

   <br />

    <div class=""card"">
        <div class=""card-body"">
            <div class=""checkout-area section-space-y-axis-100"">
                <div class=""container"">
                    <div class=""card"">
                        <div class=""card-body"" style=""background-color:#FAEAEA"">
                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5489f4596cf07152a753e2659f518164d5a574f69755", async() => {
                WriteLiteral("\r\n                                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5489f4596cf07152a753e2659f518164d5a574f610045", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                BeginWriteTagHelperAttribute();
                __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
                __tagHelperExecutionContext.AddHtmlAttribute("hidden", Html.Raw(__tagHelperStringValueBuffer), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.Minimized);
#nullable restore
#line 28 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.CustomerId);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                                <div class=""row"">
                                    <div class=""col-lg-6 col-12"">

                                        <div class=""checkbox-form"">
                                            <h3>Thông tin cá nhân</h3>
                                            <div class=""row"">

                                                <div class=""col-md-12"">
                                                    <div class=""checkout-form-list"">
                                                        <label>Họ và tên</label>
                                                        ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "5489f4596cf07152a753e2659f518164d5a574f612483", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
#nullable restore
#line 39 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.FullName);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                                                    </div>
                                                </div>
                                                <div class=""col-md-12"">
                                                    <div class=""checkout-form-list"">
                                                        <label>Số điện thoại <span class=""required"">*</span></label>
                                                        ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "5489f4596cf07152a753e2659f518164d5a574f614809", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
#nullable restore
#line 45 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Phone);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                                                    </div>
                                                </div>
                                                <div class=""col-md-12"">
                                                    <div class=""checkout-form-list"">
                                                        <label>Địa chỉ nhận hàng <span class=""required"">*</span></label>
                                                        ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "5489f4596cf07152a753e2659f518164d5a574f617136", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
#nullable restore
#line 51 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Address);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_6);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                                                    </div>\r\n                                                </div>\r\n");
                WriteLiteral(@"                                            </div>
                                        </div>
                                    </div>
                                    <div class=""col-lg-6 col-12"">
                                        <div class=""your-order"">
                                            <h3 class=""text-center"">Thông tin đơn hàng</h3>
                                            <div class=""your-order-table table-responsive"">
                                                <table class=""table"">
                                                    <thead>
                                                        <tr>
                                                            <th class=""cart-product-name"">Sản phẩm</th>
                                                            <th class=""cart-product-total"">Thành tiền</th>
                                                        </tr>
                                                    </thead>
                             ");
                WriteLiteral("                       <tbody>\r\n");
#nullable restore
#line 93 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                         if (Carts.Count() > 0)
                                                        {
                                                            foreach (var item in Carts)
                                                            {

#line default
#line hidden
#nullable disable
                WriteLiteral(@"                                                                <tr class=""cart_item"">
                                                                    <td class=""cart-product-name"">
                                                                        ");
#nullable restore
#line 99 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                                   Write(item.product.ProductName);

#line default
#line hidden
#nullable disable
                WriteLiteral("<strong class=\"product-quantity\">\r\n                                                                            × ");
#nullable restore
#line 100 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                                         Write(item.amount);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                                                                        </strong>
                                                                    </td>
                                                                    <td class=""cart-product-total""><span class=""amount"">");
#nullable restore
#line 103 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                                                                                   Write(item.TotalMoney.ToString("#,##0"));

#line default
#line hidden
#nullable disable
                WriteLiteral(" VNĐ</span></td>\r\n                                                                </tr>\r\n");
#nullable restore
#line 105 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                            }
                                                        }

#line default
#line hidden
#nullable disable
                WriteLiteral(@"

                                                    </tbody>
                                                    <tfoot>

                                                        <tr class=""order-total"">
                                                            <th>Tổng đơn hàng</th>
                                                            <td><strong><span class=""amount"">");
#nullable restore
#line 114 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Checkout\Index.cshtml"
                                                                                        Write(Carts.Sum(x => x.TotalMoney).ToString("#,##0"));

#line default
#line hidden
#nullable disable
                WriteLiteral(@" VNĐ</span></strong></td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                            <hr style=""border: 1px dashed #000;"" />
                                            <div class=""payment-method"">
                                                <div class=""payment-accordion"">
                                                    <h3 class=""text-center"">Hình thức thanh toán</h3>
                                                    <div  id=""accordion"">
                                                        <div class=""card  "">
                                                            <div class=""card-header "" id=""#payment-1"">
                                                                <h5 class=""panel-title"">
                                                                    <a h");
                WriteLiteral(@"ref=""javascript:void(0)"" class=""btn btn-primary"" data-bs-toggle=""collapse"" data-bs-target=""#collapseOne"" aria-expanded=""true"">
                                                                        Thanh toán khi giao hàng (COD)
                                                                    </a>
                                                                </h5>
                                                            </div>
                                                            <div id=""collapseOne"" class=""collapse show"" data-bs-parent=""#accordion"">
                                                                <div class=""card-body"">
                                                                    <p>
                                                                        Khách hàng sẽ thanh toán khi nhận hàng
                                                                    </p>
                                                                </div>
                         ");
                WriteLiteral(@"                                   </div>
                                                        </div>
                                                        <div class=""card"">
                                                            <div class=""card-header"" id=""#payment-2"">
                                                                <h5 class=""panel-title"">
                                                                    <a href=""javascript:void(0)"" class=""btn btn-secondary"" data-bs-toggle=""collapse"" data-bs-target=""#collapseTwo"" aria-expanded=""false"">
                                                                        Chuyển khoản qua ngân hàng
                                                                    </a>
                                                                </h5>
                                                            </div>
                                                            <div id=""collapseTwo"" class=""collapse"" data-bs-parent=""#accordion"">
   ");
                WriteLiteral(@"                                                             <div class=""card-body"">
                                                                    <div class=""row"">
                                                                        <div class=""col-md-6"">
                                                                            <h4>Qúy Khách vui lòng quét mã QR để thực hiện thanh toán:</h4>
                                                                            <p>Thực hiện thanh toán với nội dung chuyển tiền:</p>
                                                                            <b>TÊN KHÁCH HÀNG + NGÀY MUA HÀNG + THANH TOÁN ONLINE</b>
                                                                        </div>
                                                                        <div class=""col-md-6"">
                                                                            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5489f4596cf07152a753e2659f518164d5a574f627649", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_7);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""card"">
                                                            <div class=""card-header"" id=""#payment-3"">
                                                                <h5 class=""panel-title"">
                                                                    <a href=""javascript:void(0)"" class=""btn btn-danger"" data-bs-toggle=""collapse"" data-bs-target=""#collapseThree"" aria-expanded=""false"">
                                                                        Thanh toán qua Momo
                                                                    </a>
                        ");
                WriteLiteral(@"                                        </h5>
                                                            </div>
                                                            <div id=""collapseThree"" class=""collapse"" data-bs-parent=""#accordion"">
                                                                <div class=""card-body"">
                                                                    <div class=""row"">
                                                                        <div class=""col-md-6"">
                                                                            <h4>Qúy Khách vui lòng quét mã QR để thực hiện thanh toán:</h4>
                                                                            <p>Thực hiện thanh toán với nội dung chuyển tiền:</p>
                                                                            <b>TÊN KHÁCH HÀNG + NGÀY MUA HÀNG + THANH TOÁN ONLINE</b>
                                                                        </div>
                   ");
                WriteLiteral("                                                     <div class=\"col-md-6\">\r\n                                                                            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5489f4596cf07152a753e2659f518164d5a574f631039", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_8);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class=""order-button-payment mt-4"">
                                                        
                                                        <button class=""btn btn-success"" type=""submit"" value=""Xác nhận""><i class=""fas fa-check-circle m-r-5""></i> Xác nhận thanh toán</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
");
                WriteLiteral("                                </div>\r\n                            ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_9.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_9);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_10.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_10);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_11.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_11);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                        </div>\r\n                    </div>                   \r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n</main>\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"
    <script>
        $(document).ready(function () {
            $('select').niceSelect();
            $(function () {
                $(""#TinhThanh"").change(function () {
                    var locationid = $('#TinhThanh').val();
                    $.ajax({
                        url: '/Location/QuanHuyenList',
                        type: ""GET"",
                        dataType: ""JSON"",
                        data: {
                            LocationId: locationid
                        },
                        success: function (QuanHuyens) {
                            $(""#QuanHuyen"").empty();
                            $(""#PhuongXa"").empty();
                            var strPhuongXa = '<option value="""" disabled selected>Phường / Xã</option>';
                            $(""#PhuongXa"").append(strPhuongXa);
                            var strQuanHuyen = '<option value="""" disabled selected>Quận/Huyện</option>';
                            $(""#QuanHuyen"").append(strQuanHuy");
                WriteLiteral(@"en);
                            $.each(QuanHuyens, function (i, item) {
                                var option = '<option value =""' + item.locationId + '"">' + item.nameWithType + '</option>';
                                $(""#QuanHuyen"").append(option);
                            });
                            $('select').niceSelect('update');
                        }
                    });
                });

                $(""#QuanHuyen"").change(function () {
                    var locationid = $('#QuanHuyen').val();
                    $.ajax({
                        url: '/Location/PhuongXaList',
                        type: ""GET"",
                        dataType: ""JSON"",
                        data: { LocationId: locationid },
                        success: function (PhuongXaList) {
                            $(""#PhuongXa"").empty();
                            var readonly = '<option value="""" disabled selected>Phường / Xã</option>';
                            $(""");
                WriteLiteral(@"#PhuongXa"").append(readonly);
                            $.each(PhuongXaList, function (i, item) {
                                var option = '<option value =""' + item.locationId + '"">' + item.nameWithType + '</option>';
                                $(""#PhuongXa"").append(option);
                            });
                            $('select').niceSelect('update');
                        }
                    });
                });
            });
        });
    </script>
");
            }
            );
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebShop.ModelViews.MuaHangVM> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
