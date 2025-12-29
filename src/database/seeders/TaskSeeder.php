<?php

namespace Database\Seeders;

use App\Models\Task;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TaskSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Task::create([
            'title' => 'Test task 1',
            'description' => 'Add bugs',
            'status' => 'completed',
        ]);

        Task::create([
            'title' => 'Test task 2',
            'description' => 'Create the appearance of work',
            'status' => 'active',
        ]);
    }
}
