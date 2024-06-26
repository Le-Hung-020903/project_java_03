<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul class="nav nav-treeview">
    <li class="nav-item">
        <a class="nav-link" href="adminIndex">
            <i class="fa-solid fa-grip"></i>
            Trang chính
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="CategoriesList">
            <i class="fa-solid fa-bars-staggered"></i>
            Danh mục
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="SupplierList">
            <i class="fa-solid fa-cart-shopping"></i>
            Nhà cung cấp
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Banners" asp-action="Index">
            <i class="fa-brands fa-blogger-b"></i>
            Banner
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Contacts" asp-action="Index">
            <i class="fa-solid fa-blender-phone"></i>
            Liên hệ
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="News" asp-action="Index">
            <i class="fa-regular fa-newspaper"></i>
            Tin tức
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Customers" asp-action="Index">
            <i class="fa-regular fa-user"></i>
            Customer
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Orders" asp-action="Index">
            <i class="fa-solid fa-shop"></i>
            Đơn hàng
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Extensions" asp-action="Index">
            <i class="fa-solid fa-barcode"></i>
            Extension
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" asp-controller="Materials" asp-action="Index">
            <i class="fa-solid fa-barcode"></i>
            Vật liệu
        </a>
    </li>
</ul>