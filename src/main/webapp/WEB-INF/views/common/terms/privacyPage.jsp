<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관페이지</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="/ibom/resources/images/favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"
	content="/ibom/resources/images/favicon_300.png" />

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />

<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>

</head>
<body>

    <div id="skip"><a href="#main">메인 콘텐츠 바로가기</a></div>

    
   <!--  header 시작 -->
   <c:import url="../../mainHeader.jsp"/> 
   <!-- header 끝 -->

    <main id="main" class="main_container">
    
    <div id="main_container_inner" class="privacy">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">개인정보처리방침</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow">
                    <div class="privacy_box_container nicescroll_area_outer">
                        <div class="nicescroll_area">
                            <p>
                                단꿈드림(이하 "회사"라 합니다)이 운영하는 자사 브랜드 단꿈아이의 웹사이트(<a href="http://www.dankkumi.com" target="_blank" rel="noopener noreferrer">www.dankkumi.com</a>)는 개인정보보호법, 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등을 준수하고 있습니다.
                            </p>
                            <p>
                                회사는 개인정보처리방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보의 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사의 개인정보처리방침은 정부의 법률 및 지침의 변경과 회사의 약관 및 내부 정책에 따라 변경될 수 있으며 이를 개정하는 경우 회사는 변경사항에 대하여 즉시 본 웹사이트에 게시합니다. 회원님께서는 사이트 방문 시 수시로 확인하시기 바랍니다.
                                단꿈드림의 개인정보처리방침 주요 내용은 다음과 같습니다.
                            </p>
                            <ul>
                                <li> 개인정보의 수집 목적 </li>
                                <li> 수집하는 개인정보의 항목</li>
                                <li> 개인정보의 보유 기간 </li>
                                <li> 개인정보의 제3자 제공</li>
                                <li> 개인정보의 위탁 </li>
                                <li> 이용자와 법정대리인의 권리 및 그 행사 방법</li>
                                <li> 개인정보의 파기</li>
                                <li> 개인정보 자동 수집 장치의 설치 &bullet; 운영 및 그 거부에 관한 사항</li>
                                <li> 개인정보보호책임자</li>
                                <li> 개인정보의 안전성 확보 조치</li>
                                <li> 개인정보처리 방침 변경에 관한 사항</li>
                                <li> 개인정보에 관한 민원서비스</li>
                            </ul>
                        </div><!-- .nicescroll_area -->
                    </div><!-- .privacy_box_container -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">1. 개인정보의 수집 목적</h2>
                        <p>
                            회사는 서비스 이용 시 필요한 개인정보만을 수집하며, 수집 시에는 이용자에게 안내 및 동의를 받아 처리하고 있습니다.<br />
                            개인정보의 수집 목적은 다음과 같습니다.
                        </p>
                        <ul>
                            <li>회원 가입 및 관리: 회원제 서비스 이용에 따른 본인 확인, 연령 확인, 가입 의사 확인, 개인 식별, 회원의 부정 이용 방지, 고지사항 전달 등 </li>
                            <li>이벤트 및 행사 참여: 회사 혹은 협력사가 진행하는 이벤트 및 행사 참여 시 회원 확인, 고지사항 전달, 경품 및 상금 지급, 문의 대응 등</li>
                            <li>마케팅 및 광고 활용: 신규 제품 론칭 등 프로모션 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</li>
                            <li>기타: 불만 처리 등 민원, 분쟁조정을 위한 기록 보존, 기타 통계 자료 산출, 제휴 &bullet; 제안 문의</li>
                        </ul>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">2. 수집하는 개인정보의 항목</h2>
                        <p>회사는 웹페이지, 서면 양식, 전화/팩스 등의 방법을 통해 아래와 같은 개인정보를 수집합니다.</p>
                        <ul class="bullet_list">
                            <li>필수정보: 기본적인 서비스를 제공하기 위해 수집하는 개인정보 </li>
                            <li>선택정보: 기본적인 서비스 이외에 부가적인 서비스를 제공하기 위해 수집하는 개인정보</li>
                        </ul>
                        <table class="privacy_category">
                            <tbody>
                                <tr>
                                    <td class="privacy_box_table_title" rowspan="3">회원 가입 및<br /> 관리</td>
                                    <td class="privacy_box_table_sub_title">회원가입 및 관리</td>
                                    <td class="privacy_box_table_post">
                                        &lbrack;필수&rbrack; ID, 닉네임, 비밀번호, 본인확인정보(이름, 생년월일, 성별, 휴대폰 번호)<br />
                                        &lbrack;선택&rbrack; 이메일주소
                                    </td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">SNS 계정 회원가입<br /> 및 로그인 연결</td>
                                    <td class="privacy_box_table_post">&lbrack;필수&rbrack; UID(이용자 고유 식별자), 소셜 계정 연결 시 사용자가 제공 동의한 정보</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">만14세 미만 아동 회원</td>
                                    <td class="privacy_box_table_post">&lbrack;필수&rbrack; 법정대리인 정보(이름, 관계, 휴대폰 번호)</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_title" rowspan="4">이벤트 및 행사<br /> 참여</td>
                                    <td class="privacy_box_table_sub_title">이벤트 및 행사 참여</td>
                                    <td class="privacy_box_table_post">
                                        &lbrack;필수&rbrack; 이름, 휴대폰 번호, ID, 생년월일<br />
                                        &lbrack;선택&rbrack; 이메일주소, 성별, 닉네임
                                    </td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">경품 배송</td>
                                    <td class="privacy_box_table_post">&lbrack;필수&rbrack; 이름, 휴대폰 번호, 주소</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">상금 지급</td>
                                    <td class="privacy_box_table_post">&lbrack;필수&rbrack; 계좌정보(예금주 이름, 계좌번호, 은행명)</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">제세공과금처리</td>
                                    <td class="privacy_box_table_post">&lbrack;필수&rbrack; 주민등록번호, 주소, 이름</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_title">마케팅 및 광고<br /> 활용</td>
                                    <td class="privacy_box_table_sub_title">프로모션 알림 전송</td>
                                    <td class="privacy_box_table_post">&lbrack;선택&rbrack; 휴대폰 번호, 이메일 주소</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_title" rowspan="2">기타 </td>
                                    <td class="privacy_box_table_sub_title">사무 처리</td>
                                    <td class="privacy_box_table_post">
                                        &lbrack;필수&rbrack; ID<br />
                                        &lbrack;선택&rbrack; 닉네임, 이름, 휴대폰 번호, 이메일주소, 본인확인정보 (그 외 문의 유형에 따라 추가로 <br />
                                        수집되는 개인정보가 있을 수 있습니다.)
                                    </td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">제휴·제안</td>
                                    <td class="privacy_box_table_post">&lbrack;선택&rbrack; 업체명, 이름, 이메일주소</td>
                                </tr>
                            </tbody>
                        </table><!-- .privacy_category -->
                        <p>
                            서비스 안정성 확보, 부정 이용자 방지, 계정 보호, 이용약관 위반 행위 제한 등의 목적으로 서비스 이용 과정에서 자동으로 생성되는 정보(IP, 접속기록, 서비스 이용기록, 불량이용 기록, 쿠키 등)와 기기를 식별할 수 있는 정보(OS 정보, 하드웨어 정보, MAC ADDRESS, 광고식별자 등)가 수집될 수 있습니다.
                        </p>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">3. 개인정보의 보유기간 </h2>
                        <p>회사의 개인정보의 처리 및 보유기간은 다음과 같습니다.</p>
                        <ul>
                            <li>보유항목: 수집하는 개인정보의 항목과 같습니다.</li>
                            <li>보유근거: 이용약관 및 개인정보처리방침</li>
                            <li>보유기간: 이용계약에 따른 회원자격이 유지되는 기간 동안</li>
                        </ul>
                        <p>다만, 회원 탈퇴 후에도 관계 법령 규정에 의하여 정보 보존의 필요가 있거나, 이용자에게 동의를 얻은 경우는 아래와 같이 예외로 일정 기간 회원 정보를 보관합니다.</p>
                        <ul class="bullet_list bullet_list_another">
                            <li>소비자의 불만 또는 분쟁처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)</li>
                            <li>대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)</li>
                            <li>계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)</li>
                            <li>이벤트 등을 위해 수집한 정보는 최대 1년간 보관하나 이는 이벤트마다 상이할 수 있으며, 개별 이벤트 페이지에 기재된 기간을 우선합니다.</li>
                        </ul>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">4. 개인정보의 제3자 제공</h2>
                        <p>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</p>
                        <ul class="bullet_list bullet_list_another">
                            <li>이용자들이 사전에 동의한 경우</li>
                            <li>법령의 규정에 의거하거나, 혹은 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
                        </ul>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">5. 개인정보의 위탁</h2>
                        <p>회사는 서비스 이행을 위해 아래와 같이 외부 전문업체에 개인정보를 위탁하여 운영하고 있습니다.</p>
                        <table class="privacy_consignment">
                            <thead>
                                <tr>
                                    <th class="privacy_box_table_title">수탁자</th>
                                    <th class="privacy_box_table_title">위탁 업무 내용</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="privacy_box_table_sub_title">다우기술</td>
                                    <td class="privacy_box_table_post">SMS 발송</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">GS앰비즈</td>
                                    <td class="privacy_box_table_post">모바일쿠폰(기프티콘) 발송</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">CJ대한통운</td>
                                    <td class="privacy_box_table_post">경품 배송</td>
                                </tr>
                                <tr>
                                    <td class="privacy_box_table_sub_title">타라그래픽스</td>
                                    <td class="privacy_box_table_post">DM 발송</td>
                                </tr>
                            </tbody>
                        </table><!-- .privacy_consignment -->
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">6. 이용자와 법정대리인의 권리 및 그 행사 방법</h2>
                        <p>회사는 이용자 개인정보의 열람, 제공, 정정 요청에 대해 적극적으로 필요한 조치를 합니다. 이용자와 만14세 미만 아동의 법정대리인은 다음 사항에 관하여 개인정보의 열람, 제공, 정정을 요청할 수 있는 권리를 가집니다.</p>
                        <ul>
                            <li>회사가 보유하고 있는 이용자의 개인정보</li>
                            <li>회사가 이용자의 개인정보를 이용하거나 제3자에게 제공한 내역</li>
                            <li>회사에게 개인정보수집ㆍ이용ㆍ제공 등의 동의를 한 내역</li>
                        </ul>
                        <p>
                            이용자는 &lbrack;마이페이지&rbrack;  &GT; &lbrack;회원정보수정&rbrack; 메뉴에서 직접 자신의 개인정보를 열람하거나 정정할 수 있으며, &lbrack;마이페이지&rbrack;  &GT; &lbrack;회원정보수정&rbrack;  &GT; &lbrack;회원 탈퇴하기&rbrack;에서 언제든지 회원 가입 시 개인정보의 수집, 이용, 제공 등에 대해 동의하신 의사 표시(이용 계약)를 철회하여 탈퇴할 수 있습니다. <br />
                            별도로 개인정보보호책임자에게 서면, 전화, 전자우편 등을 통해 연락하여 개인정보의 열람, 제공, 정정, 동의 철회 등을 요청할 수 있습니다. <br />
                            단꿈드림은 이용자의 요청 후 지체 없이 이용자의 개인정보를 파기하는 등 필요한 조치를 취하겠습니다. 단, 동의 철회(회원 탈퇴)가 있더라도 관계 법령에 따라
최소한의 정보가 보관됩니다.
                        </p>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">7. 개인정보의 파기 </h2>
                        <p>
                            회사는 회원의 개인정보 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 그 불필요하게 된 날로부터 5일 이내 개인정보를 파기합니다.<br />
                            단, 관계법령에 의하여 일정기간 보존하여야 할 개인정보는 일정기간 보존 후에 지체 없이 파기됩니다. 파기절차 및 방법은 다음과 같습니다.
                        </p>
                        <ul>
                            <li>파기절차
                                <p>
                                    회원의 개인정보 보유기간이 경과되더라도 관계법령에 의하여 일정기간 보존하여야 할 개인정보는 별도 DB로 옮겨 일정 기간 보존 후 파기합니다(문서의 경우 별도의 시건장치 되어있는 보관함에 보관). 별도 DB로 옮겨진 개인정보는 법령에 의한 보유목적 이외의 다른 목적으로 이용되지 않습니다.
                                </p>
                            </li>
                            <li>파기방법
                                <p>
                                    - 전자적 파일 형태로 저장된 개인정보는 다시 재생할 수 없도록 기술적 방법을 사용하여 삭제합니다.<br />
                                    - 문서로 출력된 개인정보는 파쇄기로 파쇄하거나 소각을 통하여 파기합니다.

                                </p>
                            </li>
                        </ul>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">8. 개인정보 자동수집 장치의 설치·운영 및 그 거부에 관한 사항</h2>
                        <p>
                            회사는 이용자의 접속 빈도나 방문 시간 분석, 이용자의 취향과 관심 분야 파악 및 자취 추적, 각종 이벤트 참여 정보 및 방문 횟수 파악을 통해 타깃 마케팅 및 개인 맞춤 서비스를 제공할 수 있도록 개인정보 자동수집 장치를 사용하고 있습니다.
                        </p>
                        <ul>
                            <li>쿠키(COOKIE)
                                <div class="privacy_box_in_box_container">
                                    <p>
                                        서비스 개선을 위하여 이용자의 정보를 수시로 저장하고 찾아내는 '쿠키(COOKIE)' 등을 운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 이용자의 컴퓨터 하드디스크에 저장됩니다. 회사는 이이용자는 웹브라우저에서 옵션을 설정함으로써 쿠키가 수집되지 않도록 거부할 수 있습니다.

                                    </p>
                                    <div class="privacy_box_in_box">
                                        <b>쿠키 설정 거부 방법</b>
                                        <p>
                                            - INTERNET EXPLORER: 도구  &GT; 인터넷 옵션  &GT; 개인정보  &GT; 고급<br />
                                            - CHROME: 설정  &GT; 설정 표시  &GT; 개인정보의 콘텐츠 설정 버튼  &GT; 쿠키<br />
                                            그 외 브라우저의 경우 브라우저 별 설정 방식에 따릅니다.
                                        </p>
                                    </div><!-- .privacy_box_in_box -->
                                </div><!-- .privacy_box_in_box_container -->
                            </li>
                            <li>웹로그 분석
                                <div class="privacy_box_in_box_container">
                                    <p>
                                        회사는 웹사이트상에서 이용자의 서비스 이용 형태에 대해 분석할 수 있는 GOOGLE ANALYTICS와 같은 외부 웹로그분석 도구를 사용할 수 있습니다. GOOGLE ANALYTICS의 경우 데이터가 사용되는 것을 거부할 수 있습니다.
                                    </p>
                                    <div class="privacy_box_in_box">
                                        <b>Google Analytics 차단</b>
                                        <p>
                                            - HTTPS://TOOLS.GOOGLE.COM/DLPAGE/GAOPTOUT/<br />
                                            그 외 웹로그분석 도구의 경우 도구 별 거부 방식에 따릅니다.
                                        </p>
                                    </div><!-- .privacy_box_in_box -->
                                </div><!-- .privacy_box_in_box_container -->
                            </li>
                        </ul>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">9. 개인정보보호책임자</h2>
                        <p>회사는 회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보보호책임자를 지정하고 있습니다.</p>
                        <ul class="bullet_list bullet_list_another">
                            <li>개인정보보호책임자 : 김영은</li>
                            <li>개인정보보호담당자 : 박명식</li>
                            <li>전화번호 : <a href="tel:1670-0285">1670-0285</a></li>
                            <li>이메일 : <a href="mailto:webmaster@dankkum.com"><span>webmaster@dankkum.com</a></span></li>
                        </ul>
                        <p>
                            이용자는 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보보호책임자 혹은 담당부서로 신고할 수 있습니다.<br />
                            회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
                        </p>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">10. 개인정보의 안전성 확보 조치</h2>
                        <p>회사는 이용자의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안정성 확보를 위하여 다음과 같은 기술적, 관리적 대책을 강구하고 있습니다.</p>
                        <ul class="privacy_box_safety">
                            <li>
                                <b>개인정보 암호화</b>
                                <p>
                                    이용자의 개인정보는 비밀번호에 의해 보호되며, 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 통해 보호 하고 있습니다.
                                </p>
                            </li>
                            <li>
                                <b>해킹 등에 대비한 기술적 대책</b>
                                <p>
                                    회사는 해킹이나 컴퓨터 바이러스 등에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 외부로부터 접근이 통제된 구역에 시스템을 설치하고,
                                    침입 차단장치 이용 및 침입탐지 시스템을 설치하여 24시간 감시하고 있습니다. 그리고 백신 프로그램을 주기적으로 업데이트하며 갑작스런 바이러스가 출현할
                                    경우 백신이 나오는 즉시 이를 적용함으로써 개인정보가 침해되는 것을 방지하고 있습니다.
                                </p>
                            </li>
                            <li>
                                <b>개인정보처리시스템 접근 제한</b>
                                <p>
                                    회사는 개인정보취급자에 대한 접근권한의 부여, 변경, 말소 등에 관한 기준을 수립하고 비밀번호의 생성 방법, 변경 주기 등을 규정 운영하며 기타 개인정보에 대한 접근통제를 위해 필요한 조치를 다하고 있습니다.
                                </p>
                            </li>
                            <li>
                                <b>개인정보 취급 직원의 교육</b>
                                <p>
                                    개인정보관련 취급 직원은 담당자에 한정시켜 최소화 하고 새로운 보안기술의 습득 및 개인정보보호 의무에 관해 정기적인 교육을 실시하며 별도의 비밀번호를 부여하여 접근 권한을 관리하는 등 관리적 대책을 시행하고 있습니다.
                                </p>
                            </li>
                            <li>
                                <b>개인 아이디와 비밀번호 관리</b>
                                <p>
                                    이용자가 사용하는 ID와 비밀번호는 원칙적으로 이용자만이 사용하도록 되어있습니다. 회사는 이용자의 개인적인 부주의로 ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제와 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 비밀번호에 대한 보안 의식을 가지고 비밀번호를 자주 변경하며 공용PC에서의 로그인시 개인정보가 유출되지 않도록 각별한 주의를 기울여 주시기 바랍니다
                                </p>
                            </li>
                        </ul><!-- .privacy_box_safety -->
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">11. 개인정보처리방침 변경에 관한 사항</h2>
                        <p>
                            회사는 개인정보처리방침 내용에 변경이 있을 경우 개정 최소 14일 전에 웹사이트의 공지사항을 통해 알려드리나 이용자의 권리에 중대한 변경이 발생할 때에는 최소 30일 전에 고지할 것입니다.
                        </p>
                    </div><!-- .privacy_box -->

                    <div class="privacy_box">
                        <h2 class="privacy_box_title">12. 개인정보에 관한 민원서비스</h2>
                        <p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
                        <ul>
                            <li>개인정보침해신고센터 <br class="privacy_mobile_br">(<a href="http://privacy.kisa.or.kr" target="_blank" rel="noopener noreferrer"><span>privacy.kisa.or.kr</span></a> / 국번없이 118)</li>
                            <li>경찰청 사이버안전국 <br class="privacy_mobile_br">(<a href="http://cyberbureau.police.go.kr" target="_blank" rel="noopener noreferrer"><span>cyberbureau.police.go.kr</span></a> / 국번없이 182)</li>
                            <li>대검찰청 사이버수사과 <br class="privacy_mobile_br">(<a href="http://www.spo.go.kr" target="_blank" rel="noopener noreferrer"><span>www.spo.go.kr</span></a> / 국번없이 1301)</li>
                            <li>개인분쟁조정위원회 <br class="privacy_mobile_br">(<a href="http://www.kopico.go.kr" target="_blank" rel="noopener noreferrer"><span>www.kopico.go.kr</span></a> / 1833-6972)</li>
                        </ul>
                        <p>본 개인정보처리방침에서 규정되지 않은 사항은 관계법령의 범위 내에서 당사 이용약관을 우선적으로 적용합니다. </p>
                        <ul class="bullet_list">
                            <li>개인정보처리방침 공고일자 : 2019년 08월 08일</li>
                            <li>개인정보처리방침 시행일자 : 2019년 08월 08일</li>
                        </ul>
                    </div><!-- .privacy_box -->

                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    
    <!-- ======================================================================= -->
    
        <!-- footer id="footer" 시작 ==-->

<c:import url="../footer.jsp"/>
	
</body>
</html>