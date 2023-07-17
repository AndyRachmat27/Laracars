<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products_models;
use App\Models\Category_models;
use Darryldecode\Cart\Facades\CartFacade as Cart;


class FrontLandingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        dump("kucing");
        // $cartItems = \Cart::getContent();
        // dd($cartItems);
        // \Cart::add(
        //     [
        //         'id' => 1,
        //         'name' => "Kaos",
        //         'price' => 1000,
        //         'quantity' => 2,
        //         'attributes' => array(
        //             'description' => "dsdasasd",
        //             'portion' => "kdaskdask",
        //             'units' => "kasddkas",
        //         )
        //     ]
            // );
        $cartItems = \Cart::getContent(); 
        dump($cartItems); 


        $products_models = Products_models::all();
        $category_models = Category_models::all();
        return view('front.landing', compact('products_models', 'category_models','cartItems'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
