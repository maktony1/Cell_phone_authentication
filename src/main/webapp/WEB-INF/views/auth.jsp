<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 전화번호 입력창 -->
		<form action="/check/sendSMS" method="get" id="smsForm">
			보낼사람 : <input type="text" id="fromnumber" name="from" placeholder=" 전화번호 입력 " />
					<input type="hidden" name="number" />
					<input type="button" onclick="sendSMS('sendSMS')" value="전송하기" /><br>
		</form>

		 
		<script>
		    function sendSMS(pageName){
		 
		        console.log("문자를 전송합니다.");
		        $("#fromnumber").attr("action", pageName + ".do"); //위에 있는 폼태그를 컨트롤러로 전송한다.
		        console.log("pageName"+pageName);
		        $("#fromnumber").submit();
		    }
		</script>
	
	
		<!-- <script type="text/javascript">
			'use strict';
	
			var _require = require('coolsms-node-sdk');
	
			var config = _require.config;
			var Group = _require.Group;
	
			//인증을 위해 발급받은 본인의 API Key를 사용합니다.
	
			var apiKey = 'NCSL80OSP7JG6GVX';
			var apiSecret = '02OMFQXTITOAER254FNJX64ILXOLJC9X';
			config.init({ apiKey: apiKey, apiSecret: apiSecret });
			async function send() {
					var params = arguments.length <= 0 || arguments[0] === undefined ? {} : arguments[0];
	
					try {
							var response = await Group.sendSimpleMessage(params);
							console.log(response);
					} catch (e) {
							console.log(e);
					}
			}
	
			var params = {
					text: '[쿨에스엠에스 테스트] hello world!', // 문자 내용
					type: 'SMS', // 발송할 메시지 타입 (SMS, LMS, MMS, ATA, CTA)
					to: '01083460306', // 수신번호 (받는이)
					from: '01083460306' // 발신번호 (보내는이)
			};
			send(params); -->
		</script>
	</body>
</html>