<%@page import="java.util.ArrayList"%>
<%@page import="com.eatGPS.eatGPSVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>수유실 표시하기</title>

</head>
<body>

   <div>
   <form method="post" action="../../eatGPSService">
   

	
		<select name = "area">
			<option value="gs">광주 수유실 위치 표시</option>
			
		</select> <input type="submit" value="검색" >
	</form>
	</div>
   </div>
	


   <div id="map" style="width: 100%; height: 1000px;"></div>
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0351a47886aeab5672a46c979aadfb78"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
      mapOption = {
         center : new daum.maps.LatLng(35.15420004, 126.8847805), // 지도의 중심좌표
         level : 7
      // 지도의 확대 레벨
      };

      var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
   
      // 마커를 표시할 위치와 title 객체 배열입니다 
       
          var positions =[
            <%ArrayList<eatGPSVO> list = (ArrayList<eatGPSVO>) session.getAttribute("eatGPS");

         if (list != null) {
            for (int i = 0; i < list.size(); i++) {

               String name = list.get(i).getName();
               String address = list.get(i).getAddress();
               String latitude = list.get(i).getLatitude();
               String longtude = list.get(i).getLongitude();%>
            
             
             {
                 content: '<div style="font-size:15px;"><%=name%><br>주소:<%=address%></div>', 
                   latlng: new daum.maps.LatLng(<%=Double.parseDouble(latitude)%>, <%=Double.parseDouble(longtude)%>)
               },
              
              
            
         
          
            <%}
            
         }%>
         ]
         
       
         
         
         // 마커 이미지의 이미지 주소입니다
            var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
            
            for (var i = 0; i < positions.length; i++) {
               
               // 마커 이미지의 이미지 크기 입니다
               var imageSize = new daum.maps.Size(24, 35);

               // 마커 이미지를 생성합니다    
               var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

               
               // 마커를 생성합니다
                var marker = new daum.maps.Marker({
                    map: map, // 마커를 표시할 지도
                    position: positions[i].latlng // 마커의 위치
                });
               
               // 마커에 표시할 인포윈도우를 생성합니다 
                var infowindow = new daum.maps.InfoWindow({
                    content: positions[i].content // 인포윈도우에 표시할 내용
                });
                
                // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                // 이벤트 리스너로는 클로저를 만들어 등록합니다 
                // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
                // 마커를 지도에 표시합니다.
               
                marker.setMap(map);
                

               // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
               var iwContent = '<div style="padding:5px;">Hello World!</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

               // 인포윈도우를 생성합니다
               var infowindow = new daum.maps.InfoWindow({
                   content : iwContent
               });

               
               
            }
        
            
         
            // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
            function makeOverListener(map, marker, infowindow) {
                return function() {
                    infowindow.open(map, marker);
                };
            }

            // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
            function makeOutListener(infowindow) {
                return function() {
                    infowindow.close();
                };
            }

         
      

      
   </script>
</body>
</html>