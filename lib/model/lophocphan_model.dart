class LopHocPhanModel {
  String? hinhNen;
  String? maLopHocPhan;
  String? tenLopHocPhan;
  int? soLuongSinhVien;
  LopHocPhanModel(
      {this.hinhNen,
      this.maLopHocPhan,
      this.tenLopHocPhan,
      this.soLuongSinhVien});
}

List<LopHocPhanModel> ls = [
  LopHocPhanModel(
      hinhNen: "assets/images/img_backtoschool.jpg",
      maLopHocPhan: "TIN1011",
      tenLopHocPhan: "Tin học đại cương",
      soLuongSinhVien: 35),
  LopHocPhanModel(
      hinhNen: "assets/images/img_code.jpg",
      maLopHocPhan: "TIN1012",
      tenLopHocPhan: "Đại số tuyến tính",
      soLuongSinhVien: 30),
  LopHocPhanModel(
      hinhNen: "assets/images/img_graduation.jpg",
      maLopHocPhan: "TIN1013",
      tenLopHocPhan: "Xã hội học",
      soLuongSinhVien: 36),
  LopHocPhanModel(
      hinhNen: "assets/images/img_learnlanguage.jpg",
      maLopHocPhan: "TIN1014",
      tenLopHocPhan: "Toán đại số",
      soLuongSinhVien: 45),
  LopHocPhanModel(
      hinhNen: "assets/images/img_reachout.jpg",
      maLopHocPhan: "TIN1015",
      tenLopHocPhan: "Xác suất thống kê",
      soLuongSinhVien: 38),
];
