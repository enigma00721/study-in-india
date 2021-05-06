<?php

namespace App\Http\Controllers;

use App\Language;
use App\Mail\AppliedOnlineReply;
use App\Mail\PaymentSuccess;
use App\Mail\QuoteReply;
use App\Order;
use App\PaymentLogs;
use App\Quote;
use App\OnlineApply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class OnlineApplyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $all_orders = OnlineApply::all();
        return view('backend.online-apply.index',compact('all_orders'));
    }

    public function view($id)
    {
        $data = OnlineApply::find($id);
        // dd($data);
        return view('backend.online-apply.view',compact('data'));
    }

    public function send_mail(Request $request)
    {
        // dd($request->all());
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'email' => 'required|string|max:191',
            'subject' => 'required|string',
            'message' => 'required|string',
        ]);
        $data = [
            'name' => $request->name,
            'message' => $request->message,
            'subject' => str_replace('{site}',get_static_option('site_'.get_default_language().'_title'),$request->subject)
        ];

        Mail::to($request->email)->send(new AppliedOnlineReply($data));
        return redirect()->back()->with(['msg' => 'Mail Send Success...','type' => 'success']);
    }

    public function delete(Request $request,$id){
        OnlineApply::find($id)->delete();
        return redirect()->back()->with(['msg' => 'Deleted Success...','type' => 'danger']);
    }


    
    public function change_status(Request $request){
        $this->validate($request,[
            'order_status' => 'required|string|max:191',
            'order_id' => 'required|string|max:191'
        ]);
        Order::find($request->order_id)->update(['status' => $request->order_status]);

        return redirect()->back()->with(['msg' => 'Order Status Update Success...','type' => 'success']);
    }
 

   
    public function payment_logs_approve(Request $request,$id){
        $payment_logs = PaymentLogs::find($id);
        $payment_logs->status = 'complete';
        $payment_logs->save();

        Order::where('id',$payment_logs->order_id)->update(['payment_status' => 'complete']);

        Mail::to($payment_logs->email)->send(new PaymentSuccess($payment_logs));

        return redirect()->back()->with(['msg' => 'Manual Payment Accept Success','type' => 'success']);
    }

   

    

    
}
