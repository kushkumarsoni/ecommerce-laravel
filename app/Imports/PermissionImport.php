<?php

namespace App\Imports;

use Maatwebsite\Excel\Concerns\ToModel;
use Spatie\Permission\Models\Permission;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class PermissionImport implements ToModel
{
    public function model(array $row)
    {
        return new Permission([
            'name' => $row[0],
            'group_name' => $row[1]
        ]);
    }
}
