<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\topic;
use App\news;
use App\drivingtests;
use App\B1License;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Validator;

class B1LicenseController extends Controller
{
  public function getList()
  {
      $b1license = B1License::all();
      return view('admin_view.b1_license.list',['b1license'=>$b1license]);
  }
  public function getAdd()
  {
      $drivingtests = drivingtests::all();
      return view('admin_view.b1_license.add',compact('drivingtests'));
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
      $b1license = new B1License;
      $b1license->question = $request->question;
      $b1license->option_a = $request->option_a;
      $b1license->option_b = $request->option_b;
      $b1license->option_c = $request->option_c;
      $b1license->option_d = $request->option_d;
      $b1license->correct = $request->correct;
      $b1license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
          $file = $request->file('picture');
          $duoi = $file->getClientOriginalExtension();
          if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
          {
              return redirect('admin/b1_license/add')->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
          }
          $name = $file->getClientOriginalName();
          $picture = str::random(6)."_".$name;
          $file->move("upload/b1license_questions_img",$picture);
          $b1license->picture=$picture;
      }
      else
      {
          $b1license->picture= "";
      }
      $b1license->save();
      return redirect('admin/b1_license/list')->with('thongbao','Thêm câu hỏi thành công');
  }
  public function getEdit($ID)
  {
      $drivingtests = drivingtests::all();
      $b1license = B1License::find($ID);
      return view('admin_view.b1_license.edit', compact('b1license','drivingtests'));//'comment'));
  }
  public function postEdit(Request $request, $ID)
  {
      $b1license = B1License::find($ID);
      $this->validate($request,
      [
        'question'=>'required|min:5',
      ],
      [
        'question.min'=>'Nội dung câu hỏi phải có ít nhất 5 kí tự',

      ]);
      $b1license->question = $request->question;
      $b1license->option_a = $request->option_a;
      $b1license->option_b = $request->option_b;
      $b1license->option_c = $request->option_c;
      $b1license->option_d = $request->option_d;
      $b1license->correct = $request->correct;
      $b1license->driving_tests_id = $request->driving_tests_id;
      if($request->hasFile('picture'))
      {
            $file = $request->file('picture');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/b1_license/edit')
                        ->with('loi','Bạn chỉ được chọn file có đuôi jpg, png, jpeg');
            }
            $name = $file->getClientOriginalName();
            $picture = str::random(4)."_".$name;
            while (file_exists("upload/b1license_questions_img/".$picture))
            {
                $picture = str::random(4)."_".$name;
            }
            $file->move("upload/b1license_questions_img", $picture);
            unlink("upload/b1license_questions_img".$b1license->picture);
            $b1license->picture = $picture;
      }
      $b1license->save();
      return redirect('admin/b1_license/list')->with('thongbao','Bạn đã sửa thành công');
  }

  public function getDel($id)
  {
      $b1license = B1License::where('ID',$id);
      $b1license->delete();
      return redirect('admin/b1_license/list')->with('thongbao','Bạn đã xóa câu hỏi thành công');
  }
}
