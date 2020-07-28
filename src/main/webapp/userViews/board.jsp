<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>FLAT DESIGN - 문의사항</title>
    <link rel="stylesheet" type="text/css" href="resources/style/board.css">
</head>
<body>
<div id="wrap">
    <h1>이용후기</h1>
    <section class="content_section">
        <div class="content_row_1">
            <table class="board_table">
                <caption>문의사항 게시판</caption>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>글쓴이</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>5</td>
                    <td><a href="">저는 누굴까요?</a></td>
                    <td>FLAT DESIGN</td>
                    <td>22</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><a href="">BLOG에서 다양한 정보를 만나보세요</a></td>
                    <td>FLAT DESIGN</td>
                    <td>32</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><a href="">FLAT DESIGN은 원색을 강조합니다.</a></td>
                    <td>FLAT DESIGN</td>
                    <td>67</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="">홈페이지 리뉴얼 소식</a></td>
                    <td>FLAT DESIGN</td>
                    <td>96</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td><a href="">안녕하세요 홈페이지가 오픈 되었습니다.</a></td>
                    <td>FLAT DESIGN</td>
                    <td>123</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="content_row_2">
            <div class="search_box">
                <form action="#" method="get">
                    <input type="search" name="gallery_search_window" class="search_window" placeholder="검색어">
                    <div class="search_select_box">
                        <span>검색 대상</span>
                        <ul class="search_select_list">
                            <li>제목</li>
                            <li>내용</li>
                            <li>제목+내용</li>
                            <li>댓글</li>
                            <li>이름</li>
                            <li>닉네임</li>
                            <li>아이디</li>
                            <li>태그</li>
                        </ul>
                    </div>
                </form>
            </div>
            <div class="write_box">
                <a href="#">글 쓰기</a>
            </div>
        </div>
        <div class="content_row_3">
            <span class="list_prev_btn"></span>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <span class="list_next_btn"></span>
        </div>
    </section>
</div>
</body>
</html>
