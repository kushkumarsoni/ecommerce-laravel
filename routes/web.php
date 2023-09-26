<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::prefix('admin')->name('admin.')->middleware('admin')->group(function(){

    Route::controller(App\Http\Controllers\Backend\DashboardController::class)->group(function(){
        //Admin Dashboard
        Route::get('dashboard', 'index')->name('dashboard');
    });

    Route::controller(App\Http\Controllers\Backend\SystemSettingController::class)->group(function(){
        
        //Site Setting
        Route::get('setting','index')->name('setting');
        Route::post('GeneralSettingUpdate','GeneralSettingUpdate')->name('GeneralSettingUpdate');

        //Google Map
        Route::get('google-map', 'loadGoogleMapPage')->name('google-map');
        Route::post('GoogleMapUpdate', 'GoogleMapUpdate')->name('GoogleMapUpdate');

        //Mail Settings
        Route::get('mail-settings', 'loadMailSettingsPage')->name('mail-settings');
        Route::post('saveMailSettings', 'saveMailSettings')->name('saveMailSettings');

        //Media Settings
        Route::get('/media-settings', 'loadMediaSettingsPage')->name('media-settings');
        Route::get('/getMediaSettingsTableData', 'getMediaSettingsTableData')->name('getMediaSettingsTableData');
        Route::post('/getMediaSettingsById', 'getMediaSettingsById')->name('getMediaSettingsById');
        Route::post('/MediaSettingsUpdate', 'MediaSettingsUpdate')->name('MediaSettingsUpdate');

    });

    Route::controller(App\Http\Controllers\Backend\UsersController::class)->group(function(){
        //Users Page
        Route::get('/users','getUsersPageLoad')->name('users');
        Route::get('/getUsersTableData','getUsersTableData')->name('getUsersTableData');
        Route::post('/saveUsersData','saveUsersData')->name('saveUsersData');
        Route::post('/getUserById','getUserById')->name('getUserById');
        Route::post('/deleteUser','deleteUser')->name('deleteUser');
        Route::post('/bulkActionUsers','bulkActionUsers')->name('bulkActionUsers');

        //Profile Page
        Route::get('/profile','getProfilePageLoad')->name('profile');
        Route::post('/profileUpdate','profileUpdate')->name('profileUpdate');
    });

    Route::controller(App\Http\Controllers\Backend\MediaController::class)->group(function(){
        //Media Page
        Route::get('/media', 'getMediaPageLoad')->name('media');
        Route::post('/getMediaById', 'getMediaById')->name('getMediaById');
        Route::post('/mediaUpdate', 'mediaUpdate')->name('mediaUpdate');
        Route::post('/onMediaDelete', 'onMediaDelete')->name('onMediaDelete');
        Route::get('/getGlobalMediaData', 'getGlobalMediaData')->name('getGlobalMediaData');
        Route::get('/getMediaPaginationData', 'getMediaPaginationData')->name('getMediaPaginationData');

        //All File Upload
        Route::post('/FileUpload', 'FileUpload')->name('FileUpload');
        Route::post('/MediaUpload', 'MediaUpload')->name('MediaUpload');
    });

    Route::controller(App\Http\Controllers\Backend\PageController::class)->group(function(){
        //Page
        Route::get('/page', 'getAllPageData')->name('page');
        Route::get('/getPagePaginationData', 'getPagePaginationData')->name('getPagePaginationData');
        Route::post('/getPageById', 'getPageById')->name('getPageById');
        Route::post('/deletePage', 'deletePage')->name('deletePage');
        Route::post('/bulkActionPage', 'bulkActionPage')->name('bulkActionPage');
        Route::post('/hasPageTitleSlug', 'hasPageTitleSlug')->name('hasPageTitleSlug');
        Route::post('/savePageData', 'savePageData')->name('savePageData');
    });

    Route::controller(App\Http\Controllers\Backend\ContactController::class)->group(function(){
        //Contact
        Route::get('/contact', 'getContactData')->name('contact');
        Route::get('/getContactPaginationData', 'getContactPaginationData')->name('getContactPaginationData');
        Route::post('/deleteContact', 'deleteContact')->name('deleteContact');
        Route::post('/bulkActionContact', 'bulkActionContact')->name('bulkActionContact');
    });

    Route::controller(App\Http\Controllers\Backend\ProductCategoryController::class)->group(function(){
        //Product Categories
        Route::get('/product-categories', 'getProductCategoriesPageLoad')->name('product-categories');
        Route::get('/getProductCategoriesTableData', 'getProductCategoriesTableData')->name('getProductCategoriesTableData');
        Route::post('/saveProductCategoriesData', 'saveProductCategoriesData')->name('saveProductCategoriesData');
        Route::post('/getProductCategoriesById', 'getProductCategoriesById')->name('getProductCategoriesById');
        Route::post('/deleteProductCategories', 'deleteProductCategories')->name('deleteProductCategories');
        Route::post('/bulkActionProductCategories', 'bulkActionProductCategories')->name('bulkActionProductCategories');
        Route::post('/hasProductCategorySlug', 'hasProductCategorySlug')->name('hasProductCategorySlug');
    });

    Route::controller(App\Http\Controllers\Backend\ProductSubCategoryController::class)->group(function(){
        //Product Categories
        Route::get('/product-sub-categories', 'getProductSubCategoriesPageLoad')->name('product-sub-categories');
        Route::get('/getProductSubCategoriesTableData', 'getProductSubCategoriesTableData')->name('getProductSubCategoriesTableData');
        Route::post('/saveProductSubCategoriesData', 'saveProductSubCategoriesData')->name('saveProductSubCategoriesData');
        Route::post('/getProductSubCategoriesById', 'getProductSubCategoriesById')->name('getProductSubCategoriesById');
        Route::post('/deleteProductSubCategories', 'deleteProductSubCategories')->name('deleteProductSubCategories');
        Route::post('/bulkActionProductSubCategories', 'bulkActionProductSubCategories')->name('bulkActionProductSubCategories');
        Route::post('/hasProductSubCategorySlug', 'hasProductSubCategorySlug')->name('hasProductSubCategorySlug');
    });

    Route::controller(App\Http\Controllers\Backend\MenuController::class)->group(function(){
        //Menu Page
        Route::get('/menu', 'getMenuPageLoad')->name('menu');
        Route::get('/getMenuTableData', 'getMenuTableData')->name('getMenuTableData');
        Route::post('/saveMenuData', 'saveMenuData')->name('saveMenuData');
        Route::post('/getMenuById', 'getMenuById')->name('getMenuById');
        Route::post('/deleteMenu', 'deleteMenu')->name('deleteMenu');
        Route::post('/bulkActionMenu', 'bulkActionMenu')->name('bulkActionMenu');
    });

    Route::controller(App\Http\Controllers\Backend\MenuBuilderController::class)->group(function(){
        //Menu Builder Page
        Route::get('/menu-builder/{lan}/{id}', 'getMenuBuilderPageLoad')->name('menu-builder');
        Route::get('/getPageMenuBuilderData', 'getPageMenuBuilderData')->name('getPageMenuBuilderData');
        Route::get('/getBrandMenuBuilderData', 'getBrandMenuBuilderData')->name('getBrandMenuBuilderData');
        Route::get('/getProductMenuBuilderData', 'getProductMenuBuilderData')->name('getProductMenuBuilderData');
        Route::get('/getProductCategoryMenuBuilderData', 'getProductCategoryMenuBuilderData')->name('getProductCategoryMenuBuilderData');
        Route::post('/SaveParentMenu', 'SaveParentMenu')->name('SaveParentMenu');
        Route::get('/ajaxMakeMenuList', 'ajaxMakeMenuList')->name('ajaxMakeMenuList');
        Route::post('/UpdateMenuSettings', 'UpdateMenuSettings')->name('UpdateMenuSettings');
        Route::post('/deleteParentChildMenu', 'deleteParentChildMenu')->name('deleteParentChildMenu');
        Route::post('/getMegaMenuTitleById', 'getMegaMenuTitleById')->name('getMegaMenuTitleById');
        Route::post('/UpdateMegaMenuTitle', 'UpdateMegaMenuTitle')->name('UpdateMegaMenuTitle');
        Route::post('/UpdateSortableMenuList', 'UpdateSortableMenuList')->name('UpdateSortableMenuList');
    });
    
    Route::controller(App\Http\Controllers\Backend\BrandController::class)->group(function(){
        //Brands
        Route::get('/brands', 'getBrandsPageLoad')->name('brands');
        Route::get('/getBrandsTableData', 'getBrandsTableData')->name('getBrandsTableData');
        Route::post('/saveBrandsData', 'saveBrandsData')->name('saveBrandsData');
        Route::post('/getBrandsById', 'getBrandsById')->name('getBrandsById');
        Route::post('/deleteBrands', 'deleteBrands')->name('deleteBrands');
        Route::post('/bulkActionBrands', 'bulkActionBrands')->name('bulkActionBrands');
        Route::post('/hasBrandSlug', 'hasBrandSlug')->name('hasBrandSlug');
    });

    Route::controller(App\Http\Controllers\Backend\AttributeController::class)->group(function(){
        //Attributes
        Route::get('/attributes', 'getAttributesPageLoad')->name('attributes');
        Route::get('/getAttributesTableData', 'getAttributesTableData')->name('getAttributesTableData');
        Route::post('/saveAttributesData', 'saveAttributesData')->name('saveAttributesData');
        Route::post('/getAttributesById', 'getAttributesById')->name('getAttributesById');
        Route::post('/deleteAttributes', 'deleteAttributes')->name('deleteAttributes');
        Route::post('/bulkActionAttributes', 'bulkActionAttributes')->name('bulkActionAttributes');
    });

    //Tax
	Route::get('/tax', [App\Http\Controllers\Backend\TaxController::class, 'getTaxPageLoad'])->name('tax');
	Route::post('/saveTaxData', [App\Http\Controllers\Backend\TaxController::class, 'saveTaxData'])->name('saveTaxData');

    //Currency
    Route::get('/currency',[App\Http\Controllers\Backend\CurrencyController::class,'getCurrencyPageLoad'])->name('currency');
    Route::post('/saveCurrencyData',[App\Http\Controllers\Backend\CurrencyController::class,'saveCurrencyData'])->name('saveCurrencyData');

    Route::controller(App\Http\Controllers\Backend\ShippingController::class)->group(function(){
        //Shipping
        Route::get('/shipping', 'getShippingPageLoad')->name('shipping');
        Route::get('/getShippingTableData', 'getShippingTableData')->name('getShippingTableData');
        Route::post('/saveShippingData', 'saveShippingData')->name('saveShippingData');
        Route::post('/getShippingById', 'getShippingById')->name('getShippingById');
        Route::post('/deleteShipping', 'deleteShipping')->name('deleteShipping');
        Route::post('/bulkActionShipping', 'bulkActionShipping')->name('bulkActionShipping');
    });
    
    Route::controller(App\Http\Controllers\Backend\SettingController::class)->group(function(){
        //Payment methods
        Route::get('/payment-methods','loadPaymentMethodsPage')->name('payment-methods');
        Route::post('/StripeSettingsUpdate','StripeSettingsUpdate')->name('StripeSettingsUpdate');
        Route::post('/PaypalSettingsUpdate','PaypalSettingsUpdate')->name('PaypalSettingsUpdate');
        Route::post('/RazorpaySettingsUpdate','RazorpaySettingsUpdate')->name('RazorpaySettingsUpdate');
        Route::post('/MollieSettingsUpdate','MollieSettingsUpdate')->name('MollieSettingsUpdate');
        Route::post('/CODSettingsUpdate','CODSettingsUpdate')->name('CODSettingsUpdate');
        Route::post('/BankSettingsUpdate','BankSettingsUpdate')->name('BankSettingsUpdate');
    });

    Route::controller(App\Http\Controllers\Backend\HomeSliderController::class)->group(function(){
        //Slider
	    Route::get('/slider', 'getSliderPageLoad')->name('slider');
	    Route::get('/getSliderTableData', 'getSliderTableData')->name('getSliderTableData');
	    Route::post('/saveSliderData', 'saveSliderData')->name('saveSliderData');
	    Route::post('/getSliderById', 'getSliderById')->name('getSliderById');
	    Route::post('/deleteSlider', 'deleteSlider')->name('deleteSlider');
	    Route::post('/bulkActionSlider', 'bulkActionSlider')->name('bulkActionSlider');
    });

    Route::controller(App\Http\Controllers\Backend\OfferAdsController::class)->group(function(){
        //Offer Ads
        Route::get('/offer-ads','getOfferAdsPageLoad')->name('offer-ads');
        Route::get('/getOfferAdsTableData', 'getOfferAdsTableData')->name('getOfferAdsTableData');
        Route::post('/saveOfferAdsData', 'saveOfferAdsData')->name('saveOfferAdsData');
        Route::post('/getOfferAdsById', 'getOfferAdsById')->name('getOfferAdsById');
        Route::post('/deleteOfferAds', 'deleteOfferAds')->name('deleteOfferAds');
        Route::post('/bulkActionOfferAds', 'bulkActionOfferAds')->name('bulkActionOfferAds');
    });

    //Home Video Section
	Route::get('/home-video', [App\Http\Controllers\Backend\ThemeOptionsController::class, 'getThemeOptionsHomeVideo'])->name('home-video');
	Route::post('/saveThemeOptionsHomeVideo', [App\Http\Controllers\Backend\ThemeOptionsController::class, 'saveThemeOptionsHomeVideo'])->name('saveThemeOptionsHomeVideo');

    Route::controller(App\Http\Controllers\Backend\ProductController::class)->group(function(){
        //Products
        Route::get('/products', 'getProductsPageLoad')->name('products');
        Route::get('/getProductsTableData', 'getProductsTableData')->name('getProductsTableData');
        Route::post('/saveProductsData', 'saveProductsData')->name('saveProductsData');
        Route::post('/deleteProducts', 'deleteProducts')->name('deleteProducts');
        Route::post('/bulkActionProducts', 'bulkActionProducts')->name('bulkActionProducts');
        Route::post('/hasProductSlug', 'hasProductSlug')->name('hasProductSlug');
        Route::post('/getSubCategory','getSubCategory')->name('getSubCategory');
        
        //Update
        Route::get('/product/{id}', 'getProductPageData')->name('product');
        Route::post('/updateProductsData', 'updateProductsData')->name('updateProductsData');

        //Price
        Route::get('/price/{id}', 'getPricePageData')->name('price');
        Route::post('/savePriceData', 'savePriceData')->name('savePriceData');
        
        //Inventory
        Route::get('/inventory/{id}', 'getInventoryPageData')->name('inventory');
        Route::post('/saveInventoryData', 'saveInventoryData')->name('saveInventoryData');
        
        //Product Images
        Route::get('/product-images/{id}', 'getProductImagesPageData')->name('product-images');
        Route::get('/getProductImagesTableData', 'getProductImagesTableData')->name('getProductImagesTableData');
        Route::post('/saveProductImagesData', 'saveProductImagesData')->name('saveProductImagesData');
        Route::post('/deleteProductImages', 'deleteProductImages')->name('deleteProductImages');

        //Variations
        Route::get('/variations/{id}', 'getVariationsPageData')->name('variations');
        Route::post('/saveVariationsData', 'saveVariationsData')->name('saveVariationsData');
        
        //Product SEO
        Route::get('/product-seo/{id}', 'getProductSEOPageData')->name('product-seo');
        Route::post('/saveProductSEOData', 'saveProductSEOData')->name('saveProductSEOData');
            
        //Related Products
        Route::get('/related-products/{id}', 'getRelatedProductsPageData')->name('related-products');
        Route::get('/getProductListForRelatedTableData', 'getProductListForRelatedTableData')->name('getProductListForRelatedTableData');
        Route::get('/getRelatedProductTableData', 'getRelatedProductTableData')->name('getRelatedProductTableData');
        Route::post('/saveRelatedProductsData', 'saveRelatedProductsData')->name('saveRelatedProductsData');
        Route::post('/deleteRelatedProduct', 'deleteRelatedProduct')->name('deleteRelatedProduct');
    });

    Route::controller(App\Http\Controllers\Backend\InventoryController::class)->group(function(){
        //Manage Stock
        Route::get('/manage-stock', 'getManageStockPageLoad')->name('manage-stock');
        Route::get('/getManageStockTableData', 'getManageStockTableData')->name('getManageStockTableData');
        Route::post('/getProductById', 'getProductById')->name('getProductById');
        Route::post('/saveManageStockData', 'saveManageStockData')->name('saveManageStockData');
    });
    
    Route::controller(App\Http\Controllers\Backend\ThemeOptionsController::class)->group(function(){
        //Theme Logo
        Route::get('/theme-options', 'getThemeOptionsPageLoad')->name('theme-options');
        Route::post('/saveThemeLogo', 'saveThemeLogo')->name('saveThemeLogo');

        //Theme Options Header
	    Route::get('/theme-options-header', 'getThemeOptionsHeaderPageLoad')->name('theme-options-header');
	    Route::post('/saveThemeOptionsHeader', 'saveThemeOptionsHeader')->name('saveThemeOptionsHeader');

        //Theme Options Footer
	    Route::get('/theme-options-footer', 'getThemeOptionsFooterPageLoad')->name('theme-options-footer');
	    Route::post('/saveThemeOptionsFooter', 'saveThemeOptionsFooter')->name('saveThemeOptionsFooter');

        //Theme Options SEO
	    Route::get('/theme-options-seo', 'getThemeOptionsSEOPageLoad')->name('theme-options-seo');
	    Route::post('/saveThemeOptionsSEO', 'saveThemeOptionsSEO')->name('saveThemeOptionsSEO');

        //Theme Options Whatsapp
        Route::get('/theme-options-whatsapp','getThemeOptionsWhatsappPageLoad')->name('theme-options-whatsapp');
        Route::post('/saveThemeOptionsWhatsapp','saveThemeOptionsWhatsapp')->name('saveThemeOptionsWhatsapp');
    });

    Route::controller(App\Http\Controllers\Backend\SocialMediaController::class)->group(function(){
        //Social Media
        Route::get('/social-media', 'getSocialMediaPageLoad')->name('social-media');
        Route::get('/getSocialMediaTableData', 'getSocialMediaTableData')->name('getSocialMediaTableData');
        Route::post('/saveSocialMediaData', 'saveSocialMediaData')->name('saveSocialMediaData');
        Route::post('/getSocialMediaById', 'getSocialMediaById')->name('getSocialMediaById');
        Route::post('/deleteSocialMedia', 'deleteSocialMedia')->name('deleteSocialMedia');
        Route::post('/bulkActionSocialMedia', 'bulkActionSocialMedia')->name('bulkActionSocialMedia');
    });
    
    Route::controller(App\Http\Controllers\Backend\ReviewController::class)->group(function(){
        //Review & Ratings
        Route::get('review','getReviewRatingsPageLoad')->name('review');
	    Route::get('/getReviewRatingsTableData', 'getReviewRatingsTableData')->name('getReviewRatingsTableData');
	    Route::post('/deleteReviewRatings', 'deleteReviewRatings')->name('deleteReviewRatings');
	    Route::post('/bulkActionReviewRatings', 'bulkActionReviewRatings')->name('bulkActionReviewRatings');
    });
    
    Route::controller(App\Http\Controllers\Backend\NewsLetterController::class)->group(function(){
        //subscribers
        Route::get('/subscribers','getSubscribersPageLoad')->name('subscribers');
        Route::get('/getSubscriberTableData','getSubscriberTableData')->name('getSubscriberTableData');
        Route::post('/saveSubscriberData','saveSubscriberData')->name('saveSubscriberData');
        Route::post('/getSubscriberById','getSubscriberById')->name('getSubscriberById');
        Route::post('/deleteSubscriber','deleteSubscriber')->name('deleteSubscriber');

        //subscriber setting
        Route::get('/subscribe-settings', 'getSubscribeSettings')->name('subscribe-settings');
	    Route::post('/SubscribePopupUpdate', 'SubscribePopupUpdate')->name('SubscribePopupUpdate');
    });
    
    Route::controller(App\Http\Controllers\Backend\CouponController::class)->group(function(){
        //coupons
        Route::get('/coupons','getCouponsPageLoad')->name('coupons');
        Route::get('/getCouponsTableData','getCouponsTableData')->name('getCouponsTableData');
        Route::post('/saveCouponsData','saveCouponsData')->name('saveCouponsData');
        Route::post('/getCouponsById','getCouponsById')->name('getCouponsById');
        Route::post('/deleteCoupons','deleteCoupons')->name('deleteCoupons');
        Route::post('/bulkActionCoupons','bulkActionCoupons')->name('bulkActionCoupons');
    });

    Route::controller(App\Http\Controllers\Backend\RoleController::class)->group(function(){
        //permission
        Route::get('/all/permissions','AllPermissions')->name('all.permission');
        Route::get('/add/permissions/{id?}','addPermissions')->name('add.permission');
        Route::post('/save/permissions','savePermissions')->name('save.permission');
        Route::get('/delete/permissions/{id}','deletePermissions')->name('delete.permission');
        Route::get('/export/permission','ExportPermissions')->name('export.permission');
        Route::get('/import/permission','ImportPermissions')->name('import.permission');
        Route::post('/importExcel/permission','ImportExcelPermissions')->name('importExcel.permission');
    });

    Route::controller(App\Http\Controllers\Backend\TransactionController::class)->group(function(){
        //Transactions
        Route::get('/transactions','getTransactionsPageLoad')->name('transactions');
        Route::get('/getTransactionsTableData','getTransactionsTableData')->name('getTransactionsTableData');

    });
    
    Route::controller(App\Http\Controllers\Backend\TransactionExportController::class)->group(function(){
        //Transactions Excel/CSV Export
	    Route::get('/transactions-excel-export', 'TransactionsExcelExport')->name('transactions-excel-export');
	    Route::get('/transactions-csv-export', 'TransactionsCSVExport')->name('transactions-csv-export');
    });
    
    Route::controller(App\Http\Controllers\Backend\OrderController::class)->group(function(){
        //manage orders
        Route::get('/orders','getOrdersPageLoad')->name('orders');
        Route::get('/getOrdersTableData','getOrdersTableData')->name('getOrdersTableData');
        Route::post('/bulkActionOrders','bulkActionOrders')->name('bulkActionOrders');
        Route::get('/order/{id}','getOrderData')->name('order');
        Route::post('/updateOrderStatus','updateOrderStatus')->name('updateOrderStatus');
        Route::get('/getPaymentOrderStatusData','getPaymentOrderStatusData')->name('getPaymentOrderStatusData');
        Route::post('/deleteOrder','deleteOrder')->name('deleteOrder');
    });
    
	
});