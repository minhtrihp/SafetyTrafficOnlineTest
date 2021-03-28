@extends('pages.exams.app')

@section('content_exams')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">Trang Thi Thử Trực Tuyến Bằng Lái Hạng A1</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li><a href="#">Trang Thi Thử Trực Tuyến Bằng Lái Hạng A1</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
              <div class="subscribe">
                <div class="container">
                  <div class="sub-content">
                    <div class="row" style="width:1000px">
                        <!-- subscribe update message -->
                        <div class="sub-message">
                          <!-- heading -->
                          <h3 style="color: #009efb; text-align: center; margin-bottom: 50px; font-size: 30px; font-weight: bold">
                                Trang Thi Thử Trực Tuyến Bằng Lái Hạng A1</h3>
                          <!-- paragraph -->
                          <p style="text-align: center; font-size: 18px; line-height: 3">
                              Giấy phép lái xe A1 là hạng bằng lái thấp nhất và cơ bản nhất, cho phép một cá nhân điều khiển xe mô tô hai bánh có dung tích xylanh từ 50cm<sup>3</sup> đến dưới 175cm<sup>3</sup> và người khuyết tật điều khiển xe mô tô ba bánh dùng cho người khuyết tật. Những ai muốn sở hữu loại bằng này phải trải qua một cuộc thi sát hạch bao gồm phần lý thuyết cũng như thực hành theo quy định của Bộ Giao Thông. Mặc dù các quốc gia có mỗi quy định riêng về việc làm giấy phép lái xe ở mỗi công dân. Nhưng nhìn chung, quy định về việc sở hữu giấy phép lái xe hạng A1 sẽ phụ thuộc vào độ tuổi theo luật pháp ban hành. Ở Việt Nam, nếu muốn thi bằng lái xe máy hạng A1 thì độ tuổi đăng ký dự thi làm giấy phép lái xe phải từ 18 tuổi trở lên mới được phép tham gia các bài thi sát hạch được Bộ Giao Thông tổ chức.
                          </p>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-4 align-self-center">
                 <div class="text-right upgrade-btn">
                      <a href="{{ asset('exams/a1_license/multiplechoice') }}"
                          class="btn btn-success d-none d-md-inline-block text-white"
                              style="margin-left: 380px; margin-top: 50px; margin-bottom: 80px; font-size: 20px; font-weight: bold; width: 300px; height: 80px; line-height: 3.5">
                                  Bắt Đầu Thi Thử </a>
                  </div>
              </div>
            </div>
@endsection
