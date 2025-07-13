<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class PsikologController extends Controller
{
    public function register(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'confirmed'],
            'password_confirmation' => ['required'],
            'role' => ['required', 'in:1,2'],
        ]);

        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            'role' => $validated['role'],
        ]);


        return redirect('/dashboard/admin')->with('success', 'Admin/Psikolog berhasil ditambahkan.');
    }

    public function listAdmin(Request $request)
    {
        $search = $request->input('search');

        $user = User::when($search, function ($query, $search) {
            return $query->where('name', 'like', "%$search%")
                ->orWhere('email', 'like', "%$search%");
        })->paginate(10); // Ganti 10 sesuai kebutuhan

        return view('admin.list_admin', compact('user', 'search'));
    }
}
