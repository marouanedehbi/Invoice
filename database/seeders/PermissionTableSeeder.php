<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $permissions = [
            'role',
            'role-list',
            'role-create',
            'role-edit',
            'role-delete',
            'invoices',
            'invoices-list',
            'invoices-create',
            'invoices-edit',
            'invoices-delete',
			'invoices-research',
            'estimates',
            'estimates-list',
            'estimates-create',
            'estimates-edit',
            'estimates-delete',
			'dashboard'
        ];



        foreach ($permissions as $permission) {

            Permission::create(['name' => $permission]);

        }
    }
}
