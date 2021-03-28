<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\topic;
use App\news;
use App\drivingtests;
use App\A2License;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Validator;

class A2LicenseController extends Controller
{
  public function getList()
  {
      $a2license = A2License::all();
      return view('admin_view.a2_license.list',['a2license'=>$a2license]);
  }
  public function getAdd()
  {
      $drivingtests = drivingtests::all();
      return view('admin_view.a2_license.add',compact('drivingtests'));
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
      $a2license = new A2License;
      $a2license->question = $request->question;
      $a2license->option_a = $request->option_a;
      $a2license->option_b = $request->option_b;
      $a2license->option_c = $request->option_c;
      $a2license->option_d = $request->option_d;
      $a2license->correct = $request->correct;
      $a2license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
          $file = $request->file('picture');
          $duoi = $file->getClientOriginalExtension();
          if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
          {
              return redirect('admin/a2_license/add')->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
          }
          $name = $file->getClientOriginalName();
          $picture = str::random(6)."_".$name;
          $file->move("upload/a2license_questions_img",$picture);
          $a2license->picture=$picture;
      }
      else
      {
          $a2license->picture= "";
      }
      $a2license->save();
      return redirect('admin/a2_license/list')->with('thongbao','Thêm câu hỏi thành công');
  }
  public function getEdit($ID)
  {
      $drivingtests = drivingtests::all();
      $a2license = A2License::find($ID);
      return view('admin_view.a2_license.edit', compact('a2license','drivingtests'));//'comment'));
  }
  public function postEdit(Request $request, $ID)
  {
      $a2license = A2License::find($ID);
      $this->validate($request,
      [
        'question'=>'required|min:5',
      ],
      [
        'question.min'=>'Nội dung câu hỏi phải có ít nhất 5 kí tự',

      ]);
      $a2license->question = $request->question;
      $a2license->option_a = $request->option_a;
      $a2license->option_b = $request->option_b;
      $a2license->option_c = $request->option_c;
      $a2license->option_d = $request->option_d;
      $a2license->correct = $request->correct;
      $a2license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
            $file = $request->file('picture');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/a2_license/edit')
                        ->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
            }
            $name = $file->getClientOriginalName();
            $picture = str::random(4)."_".$name;
            while (file_exists("upload/a2license_questions_img/".$picture))
            {
                $picture = str::random(4)."_".$name;
            }
            $file->move("upload/a2license_questions_img", $picture);
            unlink("upload/a2license_questions_img".$a2license->picture);
            $a2license->picture = $picture;
      }
      $a2license->save();
      return redirect('admin/a2_license/list')->with('thongbao','Bạn đã sửa thành công');
  }

  public function getDel($id)
  {
      $a2license = A2License::where('ID',$id);
      $a2license->delete();
      return redirect('admin/a2_license/list')->with('thongbao','Bạn đã xóa câu hỏi thành công');
  }
}
