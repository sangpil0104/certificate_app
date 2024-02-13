class Certificate {
  String name; // 자격증 이름
  String intro; // 자격증 소개
  String detail; // 자격증 시험 주요 내용
  String examAndPoint; // 출제 문항 및 배점
  String qualification; // 응시 자격
  String acceptanceCriteria; // 합격 기준

  Certificate({
    required this.name,
    required this.intro,
    required this.detail,
    required this.examAndPoint,
    required this.qualification,
    required this.acceptanceCriteria
  });

}