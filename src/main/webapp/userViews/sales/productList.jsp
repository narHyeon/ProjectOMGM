<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-31
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="../../resources/style/sales/productList.css">
</head>
<body class="proList_body">
<main class="proList_main">
    <h2>ALL PRODUCT</h2>
    <div class="event_list">
        <ul>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/JW훌러%20풋볼_5000원.jpg" class="img" alt=""></div>
                    <em>NEW</em>
                    <div class="info">
                        <strong>JW훌러풋볼</strong>
                        <p>
                            <span>5000원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/풀무원%20아미오%20캣%20그레인프리%205.4kg%20-%20키튼&어덜트%20(전연령)_65000원_52000원(할인가).jpg"  class="img" alt=""></div>
                    <em>품절</em>
                    <div class="info">
                        <strong>아미오 캣 그레인프리 5.4kg-키튼&어덜트</strong>
                        <p>
                            <span>65000원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/딩동펫%20강아지%20장난감%20파스텔%20터그장난감%20세트%205종_9900원.jpg"  class="img" alt=""></div>
                    <em>BEST</em>
                    <div class="info">
                        <strong>파스텔 터그장난감</strong>
                        <p>
                            <span>9900원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/딩동펫%20반려동물%20삑삑이%20바베큐%20장난감_1700원.jpg"  class="img" alt=""></div>
                    <div class="info">
                        <strong>삑삑이 바베큐 장난감</strong>
                        <p>
                            <span>1700원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/프로베스트캑%20밸런스%207kg%20고양이사료_14300원.jpg"  class="img" alt=""></div>
                    <em>BEST</em>
                    <div class="info">
                        <strong>프로베스트캑 밸런스 7kg 고양이사료</strong>
                        <p>
                            <span>14300원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="../../resources/img/sales/딩동펫%20애견%20장난감%20간식총_9500원.jpg"  class="img" alt=""></div>
                    <em>NEW</em>
                    <div class="info">
                        <strong>장난감 간식총</strong>
                        <p>
                            <span>9500원</span>

                        </p>
                    </div>
                </a>
            </li>
        </ul>
    </div>
    <div class="paging">
        <ul>
            <li class="first"><a href=""><span class="hide">첫페이지</span></a></li>
            <li class="prev"><a href=""><span class="hide">이전페이지</span></a></li>
            <li><a href="" class="on">1</a></li>
            <li><a href="">2</a></li>
            <li class="next"><a href=""><span class="hide">다음페이지</span></a></li>
            <li class="last"><a href=""><span class="hide">마지막페이지</span></a></li>
        </ul>
    </div>
</main>
<div style="position:absolute; top:120px;" class="quickBox'">
    <ul>
        <li>홈페이지 가기 </li>
        <li>홈페이지 안가기 </li>
    </ul>
</div>
<script>
    var quickBox = $('.quickBox'); //퀵메뉴 코딩한 div의 클래스 네임 - 자신의 이름에 맞게 수정하세요
    var quick_top = 120; // 기준이 되는 높이 값입니다. 수정해서 테스트 해보시면 감이 오실꺼에요.
    quickBox.css('top', $(window).height() );
    $(document).ready(function(){
        quickBox.animate( { "top": $(document).scrollTop() + quick_top +"px" },  500 ); //숫자값을 변경하시면 속도변화
        $(window).scroll(function(){
            quickBox.stop();
            quickBox.animate( { "top": $(document).scrollTop() + quick_top + "px" }, 500 ); //숫자값을 변경하시면 속도변화
        });
    });
</script>
</body>
</html>