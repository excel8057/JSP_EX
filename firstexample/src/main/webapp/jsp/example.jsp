<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
	</head>
	<body>
	<% out.print("<h3>숫자를 저장한 변수 3개(7,5,9)를 정의하고 최대값 구하기</h3>"); %>
	<%
		int i[] = { 7, 5, 9};
		int result = 0;
		
		for(int a=0; a < 2; a++){
			if (i[a] > i[a+1]){
				result = i[a];
			} else {
				result = i[a+1];
			}
		}
		out.print(result);
		
		
		out.print("<h3>배열의 값(12, 26, 68, 98, 76, 54, 8, 6, 4) 중 최대값과 최소값 구하기</h3>");
		int j[] = { 12, 26, 68, 98, 76, 54, 8, 6, 4 };
		int max = j[0], min = j[0]; // 첫 번째 값을 초기값으로 설정
		for (int a = 1; a < j.length; a++) { // 1부터 시작 (첫 번째 값은 이미 초기값으로 설정됨)
		    if (j[a] > max)
		        max = j[a];
		    if (j[a] < min)
		        min = j[a];
		}
		out.print("최대값은 : " + max);
		out.print("최소값은 : " + min);
		
		
		out.print("<h3>문자열 추출하기</h3>");
		char c = '닳';
		String letter="동해 물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세";

		int index = -1;
		int totalLength = letter.length(); // 문자열의 총 길이

		for (int k = 0; k < totalLength; k++) {
		    if (letter.charAt(k) == c) {
		        index = k;
		        break;
		    }
		}

		// 출력
		out.print("문자열의 총 글자 수는: " + totalLength + "글자입니다.<br>");
		out.print("'" + c + "' 문자는 문자열에서 " + (index) + "번째 글자입니다.");
		
		
		
		out.print("<h3>문자열 리버스</h3>");
        String input = "ABCDefg";
        String reversed = "";
        for (int s = input.length() - 1; s >= 0; s--) {
            reversed += input.charAt(s);
        }

        out.print("입력 -> " + input);
        out.print("출력 -> " + reversed);
		
		
	%>
	</body>
</html>