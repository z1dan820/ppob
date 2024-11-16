<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Http;
use Auth;

class ForgotPasswordController extends Controller
{
    
    public function forgotPassword()
    {
        return view('template.forgotpassword');
    }
    
    
    public function sendOtp(Request $request)
    {
        $request->validate([
            'phone' => 'required|numeric'
        ],
        [
            'phone.required' => 'Harap isi no',
            'phone.numeric' => 'No tidak valid!'
        ]);
        
        $no = $request->phone;
        
        if($no[0] == 0){
            
            $no = str_replace($no[0],'62',$no);
        }
        
        $cek = \App\Models\User::where('no_wa',$no)->first();
        
        if(!$cek){
            
            return back()->with('error','No tidak ditemukan!');
            
        }
        
        $api = \DB::table('setting_webs')->where('id',1)->first();
        
        
        $otp = rand(100000,999999);
        
        $cek->update(['otp' => $otp]);
        
        Session::put('no',$no);
        
        Http::post($api->nomor_admin.'send-message', [
            'api_key' => $api->wa_key,
            'sender'  => $api->wa_number,
            'number'  => $no,
            'message' => 'Silahkan masukkan *'.$otp.'* untuk KODE OTP anda.'
        ]);
        
    
        
        
        return view('template.verifyotp');
        
        
        
        
    }
    
    
    public function verifyOtp(Request $request)
    {
        
        $no = Session::get('no');
        
        if(!$no){
            
            return redirect('/forgot-password');
            
        }
        
        $otp = '';
        
        foreach($request->otp as $kode){
            
            $otp .= $kode;
            
        }
        
        
        $cek = \App\Models\User::where('no_wa',$no)->where('otp',$otp)->first();
        
        if(!$cek){
            
            return back()->with('error','Kode OTP tidak valid!');
            
        }
        
        $cek->update(['otp' => NULL]);
        
        
        Auth::login($cek);
        
        
        return redirect('/user/edit/profile');
        
        
        
        
        
    }
    
}