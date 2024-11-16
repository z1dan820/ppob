<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Kategori;
use App\Models\Layanan;
use App\Http\Controllers\VipResellerController;
use Str;

class getVip extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'Vip';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        
        $digiFlazz = new VipResellerController;
        $res = $digiFlazz->services();
        
    
        foreach(Kategori::get() as $kategori){
            foreach($res['data'] as $data){
                if(Str::upper($data['game']) == Str::upper($kategori->brand)){
                    if($res['result'] == true){
                        if($data['price']['basic'] > 90000){
                        $cekgame = Layanan::where('provider_id',$data['code'])->first();
                        
                        if(!$cekgame){
                            
                            $layanan = new Layanan();
                            $layanan->layanan = $data['name'];
                            $layanan->kategori_id = $kategori->id;
                            $layanan->provider_id = $data['code'];
                            $layanan->harga = $data['price']['basic'];
                            $layanan->harga_member = $data['price']['basic'];
                            $layanan->harga_platinum = $data['price']['basic'];
                            $layanan->harga_gold = $data['price']['basic'];
                            $layanan->profit = 0;
                            $layanan->profit_member = 0;
                            $layanan->profit_platinum = 0;
                            $layanan->profit_gold = 0;
                            $layanan->catatan = $data['name'];
                            $layanan->status = ($data['status'] === "available" ? "available" : "unavailable");
                            $layanan->provider = "vip";
                            $layanan->save();
                            
                            
                        }else{
                            
                          $cekgame->update([
                             
                             'harga' => $data['price']['basic'] + ($data['price']['basic'] * $cekgame->profit / 100),
                             'harga_member' => $data['price']['basic'] + ($data['price']['basic'] * $cekgame->profit / 100),
                             'harga_platinum' => $data['price']['basic'] + ($data['price']['basic'] * $cekgame->profit / 100),
                             'harga_gold' => $data['price']['basic'] + ($data['price']['basic'] * $cekgame->profit / 100),
                             'status' => ($data['status'] === "available" ? "available" : "unavailable")
                              
                          ]);
                            
                        }
                        }
                       
                    }
                }
            }
        }
        
    }
}
