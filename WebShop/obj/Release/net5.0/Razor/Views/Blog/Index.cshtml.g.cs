#pragma checksum "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5f2f12cccdde094d6abee58e028ec680931efb16"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Blog_Index), @"mvc.1.0.view", @"/Views/Blog/Index.cshtml")]
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
#line 1 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\_ViewImports.cshtml"
using WebShop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\_ViewImports.cshtml"
using WebShop.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 1 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
using PagedList.Core.Mvc;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5f2f12cccdde094d6abee58e028ec680931efb16", @"/Views/Blog/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d3df3320de4c2e3d10181e18c8e069dc52a6b106", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Blog_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<PagedList.Core.IPagedList<WebShop.Models.TinTuc>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("img-full"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:550px;height:350px"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("page-container"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Blog", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::PagedList.Core.Mvc.PagerTagHelper __PagedList_Core_Mvc_PagerTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 4 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
  
    ViewData["Title"] = "Blog Index" + ViewBag.CurrentPage;
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<!-- Begin Main Content Area -->
<main class=""main-content"">
    <div class=""breadcrumb-area breadcrumb-height"" data-bg-image=""~/assets/images/breadcrumb/bg/1-1-1920x373.jpg"">
        <div class=""container h-100"">
            <div class=""row h-100"">
                <div class=""col-lg-12"">
                    <div class=""breadcrumb-item"">
                        <h2 class=""breadcrumb-heading"">Tin nổi bật</h2>
                        <ul>
                            <li>
                                <a href=""/"">Home <i class=""pe-7s-angle-right""></i></a>
                            </li>
                            <li>Tin nổi bật</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=""blog-area blog-column-2 section-space-y-axis-100"">
        <div class=""container"">
            <div class=""row"">
");
#nullable restore
#line 31 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
                 if (Model != null && Model.Count() > 0)
                {
                    foreach (var item in Model)
                    {
                        string url = "";

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <div class=\"col-md-6\">\r\n                            <div class=\"blog-item\">\r\n                                <div class=\"blog-img img-zoom-effect\">\r\n                                    <a");
            BeginWriteAttribute("href", " href=\"", 1526, "\"", 1537, 1);
#nullable restore
#line 39 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
WriteAttributeValue("", 1533, url, 1533, 4, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "5f2f12cccdde094d6abee58e028ec680931efb167585", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 1608, "~/images/news/", 1608, 14, true);
#nullable restore
#line 40 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
AddHtmlAttributeValue("", 1622, item.Thumb, 1622, 11, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "alt", 1, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 40 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
AddHtmlAttributeValue("", 1673, item.Title, 1673, 11, false);

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
            WriteLiteral(@"
                                    </a>
                                </div>
                                <div class=""blog-content"">
                                    <div class=""blog-meta text-dim-gray pb-3"">
                                        <ul>
                                            <li class=""date""><i class=""fa fa-calendar-o me-2""></i>");
#nullable restore
#line 46 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
                                                                                             Write(item.CreatedDate.Value.ToShortDateString());

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</li>
                                            <li>
                                                <span class=""comments me-3"">
                                                    <a href=""javascript:void(0)"">2 Comments</a>
                                                </span>
                                                <span class=""link-share"">
                                                    <a href=""javascript:void(0)"">Share</a>
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <h5 class=""title mb-4"">
                                        <a");
            BeginWriteAttribute("href", " href=\"", 2855, "\"", 2866, 1);
#nullable restore
#line 58 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
WriteAttributeValue("", 2862, url, 2862, 4, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 58 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
                                                  Write(item.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a>\r\n                                    </h5>\r\n                                    <p class=\"short-desc mb-5\">");
#nullable restore
#line 60 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
                                                          Write(item.Scontents);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                                    <div class=\"button-wrap\">\r\n                                        <a class=\"btn btn-custom-size lg-size btn-dark rounded-0\"");
            BeginWriteAttribute("href", " href=\"", 3172, "\"", 3183, 1);
#nullable restore
#line 62 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
WriteAttributeValue("", 3179, url, 3179, 4, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Xem thêm</a>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n");
#nullable restore
#line 67 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
                    }
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n                <div class=\"col-lg-12\">\r\n                    <div class=\"pagination-area pt-10\">\r\n                        <nav aria-label=\"Page navigation example\">\r\n                            <ul class=\"pagination\">\r\n                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("pager", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5f2f12cccdde094d6abee58e028ec680931efb1613293", async() => {
            }
            );
            __PagedList_Core_Mvc_PagerTagHelper = CreateTagHelper<global::PagedList.Core.Mvc.PagerTagHelper>();
            __tagHelperExecutionContext.Add(__PagedList_Core_Mvc_PagerTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
#nullable restore
#line 75 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
__PagedList_Core_Mvc_PagerTagHelper.List = Model;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("list", __PagedList_Core_Mvc_PagerTagHelper.List, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 75 "D:\.Net\MVC5\QuanAo\WebShop - Copy\WebShop\Views\Blog\Index.cshtml"
__PagedList_Core_Mvc_PagerTagHelper.Options = PagedListRenderOptions.Bootstrap4PageNumbersOnly;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("options", __PagedList_Core_Mvc_PagerTagHelper.Options, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __PagedList_Core_Mvc_PagerTagHelper.AspArea = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            __PagedList_Core_Mvc_PagerTagHelper.AspController = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            __PagedList_Core_Mvc_PagerTagHelper.AspAction = (string)__tagHelperAttribute_5.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                            </ul>\r\n                        </nav>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</main>\r\n<!-- Main Content Area End Here -->\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PagedList.Core.IPagedList<WebShop.Models.TinTuc>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
