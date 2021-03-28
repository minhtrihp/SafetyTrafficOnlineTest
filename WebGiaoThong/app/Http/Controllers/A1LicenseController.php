<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\topic;
use App\news;
use App\drivingtests;
use App\A1License;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Validator;

class A1LicenseController extends Controller
{
    public function getList()
    {
        $a1license = A1License::all();
        return view('admin_view.a1_license.list',['a1license'=>$a1license]);
    }
    public function getAdd()
    {
        $drivingtests = drivingtests::all();
        return view('admin_view.a1_license.add',compact('drivingtests'));
    }
    public function postAdd(Request $request)
    {
        $this->validate($request,
        [
          'question'=>'required|min:5',
          'option_a' => 'required',
          'option_b' => 'required',
          'correct' => 'required',
        ],
        [
          'question.required'=>'Bạn chưa nhập nội dung câu hỏi',
          'question.min'=>'Nội dung câu hỏi phải có ít nhất 5 kí tự',
          'option_a.required'=>'Bạn chưa nhập đáp án a',
          'option_b.required'=>'Bạn chưa nhập đáp án b',
          'correct.required'=>'Bạn chưa nhập đáp án đúng',
        ]);
        $a1license = new A1License;
        $a1license->question = $request->question;
        $a1license->option_a = $request->option_a;
        $a1license->option_b = $request->option_b;
        $a1license->option_c = $request->option_c;
        $a1license->option_d = $request->option_d;
        $a1license->correct = $request->correct;
        $a1license->driving_tests_id = $request->driving_tests_id;
        if($request->hasFile('picture'))
        {
            $file = $request->file('picture');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/a1_license/add')->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
            }
            $name = $file->getClientOriginalName();
            $picture = str::random(6)."_".$name;
            $file->move("upload/a1license_questions_img",$picture);
            $a1license->picture=$picture;
        }
        else
        {
            $a1license->picture= "";
        }
        $a1license->save();
        return redirect('admin/a1_license/list')->with('thongbao','Thêm câu hỏi thành công');
    }
    public function getEdit($ID)
    {
        $drivingtests = drivingtests::all();
        $a1license = A1License::find($ID);
        return view('admin_view.a1_license.edit', compact('a1license','drivingtests'));//'comment'));
    }
    public function postEdit(Request $request, $ID)
    {
        $a1license = A1License::find($ID);
        $this->validate($request,
        [
          'question'=>'required|min:5',
        ],
        [
          'question.min'=>'Nội dung câu hỏi phải có ít nhất 5 kí tự',

        ]);
        $a1license->question = $request->question;
        $a1license->option_a = $request->option_a;
        $a1license->option_b = $request->option_b;
        $a1license->option_c = $request->option_c;
        $a1license->option_d = $request->option_d;
        $a1license->correct = $request->correct;
        $a1license->driving_tests_id = $request->driving_tests_id;
        if($request->hasFile('picture'))
        {
              $file = $request->file('picture');
              $duoi = $file->getClientOriginalExtension();
              if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
              {
                  return redirect('admin/a1_license/edit')
                          ->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
              }
              $name = $file->getClientOriginalName();
              $picture = str::random(4)."_".$name;
              while (file_exists("upload/a1license_questions_img/".$picture))
              {
                  $picture = str::random(4)."_".$name;
              }
              $file->move("upload/a1license_questions_img", $picture);
              unlink("upload/a1license_questions_img".$a1license->picture);
              $a1license->picture = $picture;
        }
        $a1license->save();
        return redirect('admin/a1_license/list')->with('thongbao','Bạn đã sửa thành công');
    }

    public function getDel($id)
    {
        $a1license = A1License::where('ID',$id);
        $a1license->delete();
        return redirect('admin/a1_license/list')->with('thongbao','Bạn đã xóa câu hỏi thành công');
    }
}
