<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- ��ȭ��ȣ �Է�â -->
		<form action="/check/sendSMS" method="get" id="smsForm">
			������� : <input type="text" id="fromnumber" name="from" placeholder=" ��ȭ��ȣ �Է� " />
					<input type="hidden" name="number" />
					<input type="button" onclick="sendSMS('sendSMS')" value="�����ϱ�" /><br>
		</form>

		 
		<script>
		    function sendSMS(pageName){
		 
		        console.log("���ڸ� �����մϴ�.");
		        $("#fromnumber").attr("action", pageName + ".do"); //���� �ִ� ���±׸� ��Ʈ�ѷ��� �����Ѵ�.
		        console.log("pageName"+pageName);
		        $("#fromnumber").submit();
		    }
		</script>
	
	
		<!-- <script type="text/javascript">
			'use strict';
	
			var _require = require('coolsms-node-sdk');
	
			var config = _require.config;
			var Group = _require.Group;
	
			//������ ���� �߱޹��� ������ API Key�� ����մϴ�.
	
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
					text: '[�𿡽������� �׽�Ʈ] hello world!', // ���� ����
					type: 'SMS', // �߼��� �޽��� Ÿ�� (SMS, LMS, MMS, ATA, CTA)
					to: '01083460306', // ���Ź�ȣ (�޴���)
					from: '01083460306' // �߽Ź�ȣ (��������)
			};
			send(params); -->
		</script>
	</body>
</html>