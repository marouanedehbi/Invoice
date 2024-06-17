<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoicesController;
use App\Http\Controllers\InvoiceAchiveController;
use App\Http\Controllers\InvoicesReport;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\EstimatesController;
use App\Http\Controllers\EstimateAchiveController;
use App\Http\Controllers\MissionTypeController;


Route::get('/', function () {
    return view('auth.login');
});


# Auth::routes();
Auth::routes(['register' => false]);


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'dashboard'])->name('dashboard');

//Route::resource('invoices', App\Http\Controllers\InvoicesController::class);

Route::get('/invoices', [InvoicesController::class, 'index'])->name('invoices.index');
Route::get('/invoices_details/{id}', [InvoicesController::class, 'show']);
Route::get('/invoicesBySociete/{id}', [InvoicesController::class, 'getInvoicesBySociete']);
Route::get('/create_invoice', [InvoicesController::class, 'create'])->name('invoices.create');
Route::post('/store_invoices', [InvoicesController::class, 'store'])->name('invoices.store');
Route::get('/edit_invoice/{invoice}', [InvoicesController::class, 'edit'])->name('invoices.edit');
Route::put('/update_invoices/{invoice}', [InvoicesController::class, 'update'])->name('invoices.update');
Route::delete('/destroy_invoices', [InvoicesController::class, 'destroy'])->name('invoices.destroy');
Route::get('/status_show/{id}', [InvoicesController::class, 'showStatus'])->name('invoice.status_show');
Route::post('/status_update/{id}', [InvoicesController::class, 'statusUpdate'])->name('invoices.status_update');
Route::get('print_invoice/{id}',[InvoicesController::class, 'print_invoice']);
Route::get('print_invoice_no_logo/{id}',[InvoicesController::class, 'print_invoice_no_logo']);
Route::get('invoice_paid',[InvoicesController::class, 'invoicePaid']);
Route::get('invoice_unpaid',[InvoicesController::class, 'invoiceUnPaid']);
Route::get('invoice_partial',[InvoicesController::class, 'invoicePartial']);

Route::resource('invoice_archive', InvoiceAchiveController::class);
Route::get('/invoice_archive_details/{id}', [InvoiceAchiveController::class, 'show']);
Route::delete('/destroy_arch_invoices', [InvoiceAchiveController::class, 'destroy'])->name('archive.destroy');
Route::put('/update_arch_invoices', [InvoiceAchiveController::class, 'update'])->name('archive.update');

Route::get('invoices_report', [InvoicesReport::class, 'index']);
Route::post('search_invoices', [InvoicesReport::class, 'search_invoices'])->name('invoices.search');

Route::get('/missionTypesBySociete/{id}', [MissionTypeController::class, 'getMissionTypes']);

Route::get('/estimates', [EstimatesController::class, 'index'])->name('estimates.index');
Route::get('/estimates_details/{id}', [EstimatesController::class, 'show']);
Route::get('/create_estimate', [EstimatesController::class, 'create'])->name('estimates.create');
Route::post('/store_estimates', [EstimatesController::class, 'store'])->name('estimates.store');
Route::get('/edit_estimate/{estimate}', [EstimatesController::class, 'edit'])->name('estimate.edit');
Route::put('/update_estimates/{estimate}', [EstimatesController::class, 'update'])->name('estimates.update');
Route::delete('/destroy_estimates', [EstimatesController::class, 'destroy'])->name('estimates.destroy');
Route::get('print_estimate/{id}',[EstimatesController::class, 'print_estimate']);
Route::get('print_estimate_no_logo/{id}',[EstimatesController::class, 'print_estimate_no_logo']);

Route::resource('estimate_archive', EstimateAchiveController::class);
Route::get('/estimates_archive_details/{id}', [EstimateAchiveController::class, 'show']);
Route::delete('/destroy_arch_estimates', [EstimateAchiveController::class, 'destroy'])->name('archiveEst.destroy');
Route::put('/update_arch_estimates', [EstimateAchiveController::class, 'update'])->name('archiveEst.update');

Route::group(['middleware' => ['role:admin']], function () {
    //
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
});



Route::get('/{page}','App\Http\Controllers\AdminController@index');





// Méthode fallback() en dernière position
Route::fallback(function() {
    return view('404'); // la vue 404.blade.php
});


