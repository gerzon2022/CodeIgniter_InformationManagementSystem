<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'auth';
$route['404_override'] = 'dashboard/error_page';
$route['translate_uri_dashes'] = FALSE;

$route['login'] = 'auth/index';
$route['user'] = 'auth/users';
$route['user_save'] = 'auth/createUser';
$route['remove_user/(:num)'] = 'auth/removeUser/$1';

$route['brgy_info_save'] = 'settings/save_brgy_info';
$route['backup'] = 'settings/backup';
$route['restore'] = 'settings/restore';
$route['support'] = 'settings/support';

$route['create_resident'] = 'resident/create_resident';
$route['edit_resident/(:num)'] = 'resident/edit_resident/$1';
$route['resident_certification'] = 'resident/brgy_cert';
$route['generate_profile/(:num)'] = 'resident/generate_profile/$1';
$route['generate_brgy_cert/(:num)'] = 'resident/generate_brgy_cert/$1';
$route['generate_indi_cert/(:num)'] = 'resident/generate_indi_cert/$1';
$route['generate_resi_cert/(:num)'] = 'resident/generate_resi_cert/$1';
$route['generate_id/(:num)'] = 'resident/generate_id/$1';

$route['generate_business_permit/(:num)'] = 'business/generate_b_permit/$1';

$route['summon/(:any)'] = 'blotter/summon/$1';
$route['generate_settlement_report/(:any)'] = 'blotter/generate_settlement_report/$1';
$route['generate_dismissed_report/(:any)'] = 'blotter/generate_dismissed_report/$1';
$route['generate_endorsed_report/(:any)'] = 'blotter/generate_endorsed_report/$1';
$route['generate_summon/(:any)/(:num)'] = 'blotter/generate_summon/$1/$2';

$route['create_certificates'] = 'certificates/create_certificates';
$route['edit_certificate/(:num)'] = 'certificates/edit_certificate/$1';
$route['generate_cert/(:num)'] = 'certificates/generate_cert/$1';
$route['view_cert/(:num)'] = 'certificates/view_cert/$1';

$route['dashboard'] = 'dashboard/index';
$route['resident_info/(:any)'] = 'dashboard/resident_info/$1';
$route['population'] = 'dashboard/population';

$route['purok_info'] = 'dashboard/purok_info';
$route['precinct_info'] = 'dashboard/precinct_info';
$route['houses'] = 'dashboard/houses';
$route['house_info/(:any)'] = 'dashboard/house_info/$1';

$route['create_blotter'] = 'blotter/create_blotter';
$route['edit_blotter/(:any)'] = 'blotter/edit_blotter/$1';

$route['covidstatus'] = 'dashboard/covidstatus';
$route['covid-deaths'] = 'dashboard/covid_death';

