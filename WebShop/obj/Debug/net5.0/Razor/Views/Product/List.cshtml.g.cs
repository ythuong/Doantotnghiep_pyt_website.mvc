#pragma checksum "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "8a14687d5334f8eb3d335955f2c65c4eae7f3bb1"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Product_List), @"mvc.1.0.view", @"/Views/Product/List.cshtml")]
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
#nullable restore
#line 1 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
using PagedList.Core.Mvc;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"8a14687d5334f8eb3d335955f2c65c4eae7f3bb1", @"/Views/Product/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d3df3320de4c2e3d10181e18c8e069dc52a6b106", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Product_List : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<PagedList.Core.IPagedList<WebShop.Models.Product>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("action", new global::Microsoft.AspNetCore.Html.HtmlString("#"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("value", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
            WriteLiteral("\r\n");
#nullable restore
#line 5 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
  
    Category category = ViewBag.CurrentCat;
    ViewData["Title"] = category.Title + " " + ViewBag.CurrentPage;
    Layout = "~/Views/Shared/_Layout.cshtml";
    int PageCurrent = ViewBag.CurrentPage;

    int PageNext = PageCurrent + 1;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

<!-- Begin Main Content Area -->
<main class=""main-content"">
    <!-- Breadcrumb Section Begin -->
    <section class=""breadcrumb-option"">
        <div class=""container"">
            <div class=""row"">
                <div class=""col-lg-12"">
                    <div class=""breadcrumb__text"">
                        <h4>Shop</h4>
                        <div class=""breadcrumb__links"">
                            <a href=""./index.html"">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Shop Section Begin -->
    <section class=""shop spad"">
        <div class=""container"">
            <div class=""row"">
                <div class=""col-lg-3"">
                    <div class=""shop__sidebar"">
                        <div class=""shop__sidebar__search"">
                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8a14687d5334f8eb3d335955f2c65c4eae7f3bb15859", async() => {
                WriteLiteral("\r\n                                <input type=\"text\" placeholder=\"Search...\">\r\n                                <button type=\"submit\"><span class=\"icon_search\"></span></button>\r\n                            ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
                        </div>
                          <div class=""shop__sidebar__accordion"">
                        <div class=""accordion"" id=""accordionExample"">
                        <div class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseOne"">Danh Mục</a>
                        </div>
                        <div id=""collapseOne"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__categories"">
                        <ul class=""nice-scroll"">
                        <li><a href=""#"">Quần Short (20)</a></li>
                        <li><a href=""#"">Áo khoác (20)</a></li>
                        <li><a href=""#"">Áo sơ mi (20)</a></li>
                        <li><a href=""#"">Chân váy (20)</a></li>
                        <li><a href=""#"">Áo thun (20)</a></li>
                        <li><a href=""#"">Phụ kiệ");
            WriteLiteral(@"n (20)</a></li>
                        <li><a href=""#"">Túi & Ví (20)</a></li>
                        <li><a href=""#"">Quần Jeans (20)</a></li>
                        <li><a href=""#"">GIày dép (20)</a></li>
                        </ul>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseTwo"">Thương hiệu</a>
                        </div>
                        <div id=""collapseTwo"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__brand"">
                        <ul>
                        <li><a href=""#"">Louis Vuitton</a></li>
                        <li><a href=""#"">Chanel</a></li>
                        <li><a href=""#"">Hermes</a></li>
             ");
            WriteLiteral(@"           <li><a href=""#"">Gucci</a></li>
                        </ul>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseThree"">Giá</a>
                        </div>
                        <div id=""collapseThree"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__price"">
                        <ul>
                        <li><a href=""#"">$0.00 - $50.00</a></li>
                        <li><a href=""#"">$50.00 - $100.00</a></li>
                        <li><a href=""#"">$100.00 - $150.00</a></li>
                        <li><a href=""#"">$150.00 - $200.00</a></li>
                        <li><a href=""#"">$200.00 - $250.00</a></li>
                        <li");
            WriteLiteral(@"><a href=""#"">250.00+</a></li>
                        </ul>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseFour"">Size</a>
                        </div>
                        <div id=""collapseFour"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__size"">
                        <label for=""xs"">
                        xs
                        <input type=""radio"" id=""xs"">
                        </label>
                        <label for=""sm"">
                        s
                        <input type=""radio"" id=""sm"">
                        </label>
                        <label for=""md"">
                        m
                       ");
            WriteLiteral(@" <input type=""radio"" id=""md"">
                        </label>
                        <label for=""xl"">
                        xl
                        <input type=""radio"" id=""xl"">
                        </label>
                        <label for=""2xl"">
                        2xl
                        <input type=""radio"" id=""2xl"">
                        </label>
                        <label for=""xxl"">
                        xxl
                        <input type=""radio"" id=""xxl"">
                        </label>
                        <label for=""3xl"">
                        3xl
                        <input type=""radio"" id=""3xl"">
                        </label>
                        <label for=""4xl"">
                        4xl
                        <input type=""radio"" id=""4xl"">
                        </label>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div ");
            WriteLiteral(@"class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseFive"">Colors</a>
                        </div>
                        <div id=""collapseFive"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__color"">
                        <label class=""c-1"" for=""sp-1"">
                        <input type=""radio"" id=""sp-1"">
                        </label>
                        <label class=""c-2"" for=""sp-2"">
                        <input type=""radio"" id=""sp-2"">
                        </label>
                        <label class=""c-3"" for=""sp-3"">
                        <input type=""radio"" id=""sp-3"">
                        </label>
                        <label class=""c-4"" for=""sp-4"">
                        <input type=""radio"" id=""sp-4"">
                        </label>
                        <label class=""c");
            WriteLiteral(@"-5"" for=""sp-5"">
                        <input type=""radio"" id=""sp-5"">
                        </label>
                        <label class=""c-6"" for=""sp-6"">
                        <input type=""radio"" id=""sp-6"">
                        </label>
                        <label class=""c-7"" for=""sp-7"">
                        <input type=""radio"" id=""sp-7"">
                        </label>
                        <label class=""c-8"" for=""sp-8"">
                        <input type=""radio"" id=""sp-8"">
                        </label>
                        <label class=""c-9"" for=""sp-9"">
                        <input type=""radio"" id=""sp-9"">
                        </label>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class=""card"">
                        <div class=""card-heading"">
                        <a data-toggle=""collapse"" data-target=""#collapseSix"">Tags</a>
                      ");
            WriteLiteral(@"  </div>
                        <div id=""collapseSix"" class=""collapse show"" data-parent=""#accordionExample"">
                        <div class=""card-body"">
                        <div class=""shop__sidebar__tags"">
                        <a href=""#"">Product</a>
                        <a href=""#"">Bags</a>
                        <a href=""#"">Shoes</a>
                        <a href=""#"">Fashio</a>
                        <a href=""#"">Clothing</a>
                        <a href=""#"">Hats</a>
                        <a href=""#"">Accessories</a>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
                <div class=""col-lg-9"">
                    <div class=""shop__product__option"">
                        <div class=""row"">
                            <div class=""col-lg-6 col-md-6 col-sm-6"">
           ");
            WriteLiteral(@"                     <div class=""shop__product__option__left"">
                                    <p>Showing 1–12 of 126 results</p>
                                </div>
                            </div>
                            <div class=""col-lg-6 col-md-6 col-sm-6"">
                                <div class=""shop__product__option__right"">
                                    <p>Sort by Price:</p>
                                    <select>
                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8a14687d5334f8eb3d335955f2c65c4eae7f3bb116638", async() => {
                WriteLiteral("Low To High");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8a14687d5334f8eb3d335955f2c65c4eae7f3bb117843", async() => {
                WriteLiteral("$0 - $55");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8a14687d5334f8eb3d335955f2c65c4eae7f3bb119045", async() => {
                WriteLiteral("$55 - $100");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                    </select>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"row\">\r\n");
#nullable restore
#line 230 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
                         if (Model != null && Model.Count() > 0)
                        {
                            foreach (var item in Model)
                            {
                                string url = $"/{item.Alias}-{item.ProductId}.html";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                <div class=""col-lg-4 col-md-6 col-sm-6"">
                                    <div class=""product__item"">
                                        <div class=""product__item__pic set-bg"">
                                            <a");
            BeginWriteAttribute("href", " href=\"", 11202, "\"", 11213, 1);
#nullable restore
#line 238 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
WriteAttributeValue("", 11209, url, 11209, 4, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "8a14687d5334f8eb3d335955f2c65c4eae7f3bb121572", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 11275, "~/images/products/", 11275, 18, true);
#nullable restore
#line 239 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
AddHtmlAttributeValue("", 11293, item.Thumb, 11293, 11, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "alt", 1, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 239 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
AddHtmlAttributeValue("", 11311, item.Title, 11311, 11, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                            </a>\r\n                                            <ul class=\"product__hover\">\r\n                                                <li><a href=\"#\"><img src=\"assets/img/icon/heart.png\"");
            BeginWriteAttribute("alt", " alt=\"", 11549, "\"", 11555, 0);
            EndWriteAttribute();
            WriteLiteral("></a></li>\r\n                                                <li>\r\n                                                    <a href=\"#\"><img src=\"assets/img/icon/compare.png\"");
            BeginWriteAttribute("alt", " alt=\"", 11724, "\"", 11730, 0);
            EndWriteAttribute();
            WriteLiteral("> <span>Compare</span></a>\r\n                                                </li>\r\n                                                <li><a href=\"#\"><img src=\"assets/img/icon/search.png\"");
            BeginWriteAttribute("alt", " alt=\"", 11915, "\"", 11921, 0);
            EndWriteAttribute();
            WriteLiteral("></a></li>\r\n                                            </ul>\r\n                                        </div>\r\n                                        <div class=\"product__item__text\">\r\n                                            <h6>");
#nullable restore
#line 250 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
                                           Write(item.ProductName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\r\n");
            WriteLiteral(@"                                            <div class=""rating"">
                                                <i class=""fa fa-star-o""></i>
                                                <i class=""fa fa-star-o""></i>
                                                <i class=""fa fa-star-o""></i>
                                                <i class=""fa fa-star-o""></i>
                                                <i class=""fa fa-star-o""></i>
                                            </div>
                                            <h5><span class=""new-price"">");
#nullable restore
#line 259 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
                                                                   Write(item.Price.Value.ToString("#,##0"));

#line default
#line hidden
#nullable disable
            WriteLiteral(@" VNĐ</span></h5>
                                            <div class=""product__color__select"">
                                                <label for=""pc-4"">
                                                    <input type=""radio"" id=""pc-4"">
                                                </label>
                                                <label class=""active black"" for=""pc-5"">
                                                    <input type=""radio"" id=""pc-5"">
                                                </label>
                                                <label class=""grey"" for=""pc-6"">
                                                    <input type=""radio"" id=""pc-6"">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
");
#nullable restore
#line 274 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
                            }
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <!-- Shop Section End -->\r\n</main>\r\n\r\n");
#nullable restore
#line 284 "F:\WebsiteThoiTrang\WebsiteThoiTrang\WebShop\Views\Product\List.cshtml"
  
    var prevDisabled = !Model.HasPreviousPage ? "disabled" : "";
    var nextDisabled = !Model.HasNextPage ? "disabled" : "";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n<!-- Main Content Area End Here -->\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"
    <script>
        $(document).ready(function () {
            $(function () {
                $("".add-to-cart"").click(function () {
                    var productid = $('#ProductId').val();
                    var soluong = $('#txtsoluong').val();
                    $.ajax({
                        url: '/api/cart/add',
                        type: ""POST"",
                        dataType: ""JSON"",
                        data: {
                            productID: productid,
                            amount: soluong + 1
                        },
                        success: function (response) {
                            loadHeaderCart();
                            location.reload();
                        },
                        error: function (error) {
                            alert(""There was an error posting the data to the server"" + error.responseText);
                        }
                    });
                });
            });
        });
");
                WriteLiteral("\n        function loadHeaderCart() {\r\n            $(\"#miniCart\").load(\"/AjaxContent/HeaderCart\");\r\n            $(\"#numberCart\").load(\"/AjaxContent/NumberCart\");\r\n        }\r\n\r\n    </script>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PagedList.Core.IPagedList<WebShop.Models.Product>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
