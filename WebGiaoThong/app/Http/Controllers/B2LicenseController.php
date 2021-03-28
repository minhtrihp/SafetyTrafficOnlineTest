<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\topic;
use App\news;
use App\drivingtests;
use App\B2License;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Validator;

class B2LicenseController extends Controller
{
  public function getList()
  {
      $b2license = B2License::all();
      return view('admin_view.b2_license.list',['b2license'=>$b2license]);
  }
  public function getAdd()
  {
      $drivingtests = drivingtests::all();
      return view('admin_view.b2_license.add',compact('drivingtests'));
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
      $b2license = new B2License;
      $b2license->question = $request->question;
      $b2license->option_a = $request->option_a;
      $b2license->option_b = $request->option_b;
      $b2license->option_c = $request->option_c;
      $b2license->option_d = $request->option_d;
      $b2license->correct = $request->correct;
      $b2license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
          $file = $request->file('picture');
          $duoi = $file->getClientOriginalExtension();
          if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
          {
              return redirect('admin/b2_license/add')->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
          }
          $name = $file->getClientOriginalName();
          $picture = str::random(6)."_".$name;
          $file->move("upload/b2license_questions_img",$picture);
          $b2license->picture=$picture;
      }
      else
      {
          $b2license->picture= "";
      }
      $b2license->save();
      return redirect('admin/b2_license/list')->with('thongbao','Thêm câu hỏi thành công');
  }
  public function getEdit($ID)
  {
      $drivingtests = drivingtests::all();
      $b2license = B2License::find($ID);
      return view('admin_view.b2_license.edit', compact('b2license','drivingtests'));//'comment'));
  }
  public function postEdit(Request $request, $ID)
  {
      $b2license = B2License::find($ID);
      $this->validate($request,
      [
        'question'=>'required|min:5',
      ],
      [
        'question.min'=>'Nội dung câu hỏi phải có ít nhất 5 kí tự',

      ]);
      $b2license->question = $request->question;
      $b2license->option_a = $request->option_a;
      $b2license->option_b = $request->option_b;
      $b2license->option_c = $request->option_c;
      $b2license->option_d = $request->option_d;
      $b2license->correct = $request->correct;
      $b2license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
            $file = $request->file('picture');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/b2_license/edit')
                        ->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
            }
            $name = $file->getClientOriginalName();
            $picture = str::random(4)."_".$name;
            while (file_exists("upload/b2license_questions_img/".$picture))
            {
                $picture = str::random(4)."_".$name;
            }
            $file->move("upload/b2license_questions_img", $picture);
            unlink("upload/b2license_questions_img".$b2license->picture);
            $b2license->picture = $picture;
      }
      $b2license->save();
      return redirect('admin/b2_license/list')->with('thongbao','Bạn đã sửa thành công');
  }

  public function getDel($id)
  {
      $b2license = B2License::where('ID',$id);
      $b2license->delete();
      return redirect('admin/b2_license/list')->with('thongbao','Bạn đã xóa câu hỏi thành công');
  }
}
