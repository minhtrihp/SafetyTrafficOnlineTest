@extends('pages.exams.app')

@section('content_exams')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">Trang Thi Thử Trực Tuyến Bằng Lái Hạng A2</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li><a href="#">Trang Thi Thử Trực Tuyến Bằng Lái Hạng A2</a></li>
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
                                Trang Thi Thử Trực Tuyến Bằng Lái Loại A2</h3>
                          <!-- paragraph -->
                          <p style="text-align: center; font-size: 18px; line-height: 3">
                            Giấy phép lái xe hạng A2 cấp cho người lái xe để điều khiển xe mô tô hai bánh có dung tích xy lanh từ 175 cm<sup>3</sup> trở lên và các loại xe quy định cho giấy phép lái xe hạng A1. Như vậy, người có bằng A2 lái được xe mô tô hai bánh có dung tích xy lanh từ 175 cm<sup>3</sup> trở lên và các loại xe quy định cho giấy phép lái xe hạng A1, bao gồm xe mô tô hai bánh có dung tích xy lanh từ 50 cm<sup>3</sup> đến dưới 175 cm<sup>3</sup> và xe mô tô ba bánh dùng cho người khuyết tật. Lưu ý, không có bằng lái hạng A1 vẫn được đăng kí thi bằng lái hạng A2. Ngoài ra, cần nắm rõ bằng A1 và bằng A2 là hai bằng lái xe riêng biệt và không có việc nâng bằng từ A1 lên A2. Theo thông tư 12/2017/TT-BGTVT ngày 15/4/2017 quy định về đào tạo, sát hạch, cấp giấy phép lái xe cơ giới đường bộ, người từ 18 tuổi trở lên (không cần phải thuộc diện công an, quân đội, thanh tra giao thông, quản lý thị trường, kiểm lâm, sát hạch viên, vận động viên môtô, không cần đứng tên giấy đăng ký xe mô tô trên 175 cm<sup>3</sup>) đều được phép tham gia thi và cấp bằng lái xe mô tô hạng A2.
                        </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-4 align-self-center">
                 <div class="text-right upgrade-btn">
                      <a href="{{ asset('exams/a2_license/multiplechoice') }}"
                          class="btn btn-success d-none d-md-inline-block text-white"
                              style="margin-left: 380px; margin-top: 50px; margin-bottom: 80px; font-size: 20px; font-weight: bold; width: 300px; height: 80px; line-height: 3.5">
                                  Bắt Đầu Thi Thử </a>
                  </div>
              </div>
            </div>
@endsection
