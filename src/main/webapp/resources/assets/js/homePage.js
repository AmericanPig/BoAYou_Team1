


   window.onload = function() {
      getDailyMovieList();
      getWeeklyMovieList();
      wordSelect();
   }
       function wordSelect() {
            $.ajax(
              {
                url: "http://localhost:8080/controller/api/MovieListAPI"
                , async: true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                , contentType: 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                , type: "GET" //method
                , dataType: "xml" // 수신타입
                , success: function (data, textStatus) {
                  console.log("data");
                  console.log(data);
                  var itemTag = data.getElementsByTagName("item");
                  console.log(itemTag[1]);
                  console.log(itemTag.length);
                  console.log("확인");
                    
               
                  var titleTag = data.getElementsByTagName("title");
                  var title = titleTag[0].textContent;
                  var docidTag = data.getElementsByTagName("docid");
                  var docid = docidTag[0].textContent;
                  console.log(title);

                  $(document).ready(function () {
                    const searchBox = $("#searchBox");
                    const searchResults = $("#searchResults");
                   
                    const data = [];
                   const doc = [];

                    for (var i = 0; i < itemTag.length; i++) {

                      data.push(titleTag[i].textContent);
                      doc.push(docidTag[i].textContent);
                    }

                    searchBox.keyup(function () {
                      const searchString = searchBox.val().toLowerCase();
                      var searchMove = document.getElementById("searchMove");
                      const filteredData = data.filter((item) =>
                        item.toLowerCase().includes(searchString)
                      );

                      searchResults.html("");

                      if (searchString.length > 0) {
                        filteredData.forEach((item) => {
                          const listItem = $("<div>").text(item);

                          listItem.click(function () {
                            searchBox.val(item);
                            searchResults.html("");
                            
                           
                            
                            // 자동으로 페이지 이동
                            const nextPageHref = "movieSearchListPage?movieCate=검색&title=" + searchBox.val();
                            window.location.href = nextPageHref;
                          });

                          searchResults.append(listItem);
                          console.log(searchBox.textContent);
                        

                     
                          
                     searchMove.href = "movieSearchListPage?movieCate=검색&title="+searchBox.val();       
                            
                                
                      
                          
                         
                        });
                      }
                    });
                  });
                }
                , error: function (jqXHR, textStatus, errorThrown) {
                  console.log(jqXHR);
                  console.log(textStatus);
                  console.log(errorThrown);
                }
              }
            );
          }
   
   
   
   
   
   
   function getWeeklyMovieList() {
      var today = new Date();
      var year = today.getFullYear();
      var month = ('0' + (today.getMonth() + 1)).slice(-2);
      var day = ('0' + today.getDate()).slice(-2);
      var dateString = year + month + day;

      //console.log(dateString - 1);

      //외부 api
      const param = {
         key : "7b9e724f14695b5a04b7ad76a02309fd",
         targetDt : dateString - 7

      };

      $
            .ajax({
               url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml",
               async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
               ,
               contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
               ,
               type : "GET" //method
               ,
               data : param,
               dataType : "xml" // 수신타입
               ,
               success : function(data, textStatus) {
                  //console.log("data");
                  //console.log(data);

                  var movieNmTag = data.getElementsByTagName("movieNm");
                  var movieNm0 = movieNmTag[0].textContent;
                  var movieNm1 = movieNmTag[1].textContent;
                  var movieNm2 = movieNmTag[2].textContent;
                  var movieNm3 = movieNmTag[3].textContent;
                  var movieNm4 = movieNmTag[4].textContent;
                  var movieNm5 = movieNmTag[5].textContent;
                  var movieNm6 = movieNmTag[6].textContent;
                  var movieNm7 = movieNmTag[7].textContent;
                  var movieNm8 = movieNmTag[8].textContent;
                  var movieNm9 = movieNmTag[9].textContent;
                  
                  var openDtTag = data.getElementsByTagName("openDt");
                        var openDt0 = openDtTag[0].textContent.replace(/-/g, '');
                        var openDt1 = openDtTag[1].textContent.replace(/-/g, '');
                        var openDt2 = openDtTag[2].textContent.replace(/-/g, '');
                        var openDt3 = openDtTag[3].textContent.replace(/-/g, '');
                        var openDt4 = openDtTag[4].textContent.replace(/-/g, '');
                        var openDt5 = openDtTag[5].textContent.replace(/-/g, '');
                        var openDt6 = openDtTag[6].textContent.replace(/-/g, '');
                        var openDt7 = openDtTag[7].textContent.replace(/-/g, '');
                        var openDt8 = openDtTag[8].textContent.replace(/-/g, '');
                        var openDt9 = openDtTag[9].textContent.replace(/-/g, '');
                       // console.log("여기 ");
                       // console.log(openDt0);
                       // console.log(openDt3);

                  $
                        .ajax({
                           url : "http://localhost:8080/controller/api/MovieListAPI",
                           async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                           ,
                           contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                           ,
                           type : "GET" //method
                           ,
                           dataType : "xml" // 수신타입
                           ,
                           success : function(data2, textStatus) {

                              var item = data2
                                    .getElementsByTagName("item");
                              var titleTag = data2
                                    .getElementsByTagName("title");
                              var posterTag = data2
                                    .getElementsByTagName("posters");
                              var docidTag = data2
                                    .getElementsByTagName("docid");
                              var reprlsdateTag = data2
                              .getElementsByTagName("reprlsdate");

                              for (var i = 0; i < item.length; i++) {
                                 var title = titleTag[i].textContent;
                                 var poster = posterTag[i].textContent;
                                 var docid = docidTag[i].textContent;
                                 var reprlsdate = reprlsdateTag[i].textContent;

                                 if (movieNm0 == title && openDt0 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster0");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster0");
                                    var docidHref = document
                                          .getElementById("weeklyADocid0");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm1 == title && openDt1 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster1");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster1");
                                    var docidHref = document
                                          .getElementById("weeklyADocid1");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm2 == title && openDt2 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster2");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster2");
                                    var docidHref = document
                                          .getElementById("weeklyADocid2");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;
                                 } else if (movieNm3 == title && openDt3 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster3");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster3");
                                    var docidHref = document
                                          .getElementById("weeklyADocid3");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm4 == title && openDt4 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster4");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster4");
                                    var docidHref = document
                                          .getElementById("weeklyADocid4");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm5 == title && openDt5 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster5");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster5");
                                    var docidHref = document
                                          .getElementById("weeklyADocid5");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;
                                 } else if (movieNm6 == title && openDt6 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster6");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster6");
                                    var docidHref = document
                                          .getElementById("weeklyADocid6");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm7 == title && openDt7 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster7");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster7");
                                    var docidHref = document
                                          .getElementById("weeklyADocid7");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm8 == title && openDt8 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster8");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster8");
                                    var docidHref = document
                                          .getElementById("weeklyADocid8");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;
                                 } else if (movieNm9 == title && openDt9 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("weeklyImgPoster9");
                                    var posterHref = document
                                          .getElementById("weeklyAPoster9");
                                    var docidHref = document
                                          .getElementById("weeklyADocid9");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=주간박스오피스&Docid="
                                          + docid;
                                 }

                                 else {

                                 }
                              }
                           },
                           error : function(jqXHR, textStatus,
                                 errorThrown) {
                              console.log(jqXHR);
                              console.log(textStatus);
                              console.log(errorThrown);
                           }
                        });
               },
               error : function(jqXHR, textStatus, errorThrown) {
                  console.log(jqXHR);
                  console.log(textStatus);
                  console.log(errorThrown);
               }
            });
   }
   function getDailyMovieList() {
      var today = new Date();
      var year = today.getFullYear();
      var month = ('0' + (today.getMonth() + 1)).slice(-2);
      var day = ('0' + today.getDate()).slice(-2);
      var dateString = year + month + day;

      //console.log(dateString - 1);

      //외부 api
      const param = {
         key : "7b9e724f14695b5a04b7ad76a02309fd",
         targetDt : dateString - 1

      };

      $
            .ajax({
               url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml",
               async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
               ,
               contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
               ,
               type : "GET" //method
               ,
               data : param,
               dataType : "xml" // 수신타입
               ,
               success : function(data, textStatus) {
                  console.log("data");
                  console.log(data);

                  var movieNmTag = data.getElementsByTagName("movieNm");
                  var movieNm0 = movieNmTag[0].textContent;
                  var movieNm1 = movieNmTag[1].textContent;
                  var movieNm2 = movieNmTag[2].textContent;
                  var movieNm3 = movieNmTag[3].textContent;
                  var movieNm4 = movieNmTag[4].textContent;
                  var movieNm5 = movieNmTag[5].textContent;
                  var movieNm6 = movieNmTag[6].textContent;
                  var movieNm7 = movieNmTag[7].textContent;
                  var movieNm8 = movieNmTag[8].textContent;
                  var movieNm9 = movieNmTag[9].textContent;

                  var audiCntTag = data.getElementsByTagName("audiCnt");
                  var audiCnt0 = audiCntTag[0].textContent;
                  var audiCnt1 = audiCntTag[1].textContent;
                  var audiCnt2 = audiCntTag[2].textContent;
                  var audiCnt3 = audiCntTag[3].textContent;
                  var audiCnt4 = audiCntTag[4].textContent;
                  var audiCnt5 = audiCntTag[5].textContent;
                  var audiCnt6 = audiCntTag[6].textContent;
                  var audiCnt7 = audiCntTag[7].textContent;
                  var audiCnt8 = audiCntTag[8].textContent;
                  var audiCnt9 = audiCntTag[9].textContent;

                  var audiChangeTag = data
                        .getElementsByTagName("audiChange");
                  var audiChange0 = audiChangeTag[0].textContent;
                  var audiChange1 = audiChangeTag[1].textContent;
                  var audiChange2 = audiChangeTag[2].textContent;
                  var audiChange3 = audiChangeTag[3].textContent;
                  var audiChange4 = audiChangeTag[4].textContent;
                  var audiChange5 = audiChangeTag[5].textContent;
                  var audiChange6 = audiChangeTag[6].textContent;
                  var audiChange7 = audiChangeTag[7].textContent;
                  var audiChange8 = audiChangeTag[8].textContent;
                  var audiChange9 = audiChangeTag[9].textContent;

                  var audiAccTag = data.getElementsByTagName("audiAcc");
                  var audiAcc0 = audiAccTag[0].textContent;
                  var audiAcc1 = audiAccTag[1].textContent;
                  var audiAcc2 = audiAccTag[2].textContent;
                  var audiAcc3 = audiAccTag[3].textContent;
                  var audiAcc4 = audiAccTag[4].textContent;
                  var audiAcc5 = audiAccTag[5].textContent;
                  var audiAcc6 = audiAccTag[6].textContent;
                  var audiAcc7 = audiAccTag[7].textContent;
                  var audiAcc8 = audiAccTag[8].textContent;
                  var audiAcc9 = audiAccTag[9].textContent;
                  
                  var openDtTag = data.getElementsByTagName("openDt");
                        var openDt0 = openDtTag[0].textContent.replace(/-/g, '');
                        var openDt1 = openDtTag[1].textContent.replace(/-/g, '');
                        var openDt2 = openDtTag[2].textContent.replace(/-/g, '');
                        var openDt3 = openDtTag[3].textContent.replace(/-/g, '');
                        var openDt4 = openDtTag[4].textContent.replace(/-/g, '');
                        var openDt5 = openDtTag[5].textContent.replace(/-/g, '');
                        var openDt6 = openDtTag[6].textContent.replace(/-/g, '');
                        var openDt7 = openDtTag[7].textContent.replace(/-/g, '');
                        var openDt8 = openDtTag[8].textContent.replace(/-/g, '');
                        var openDt9 = openDtTag[9].textContent.replace(/-/g, '');
                        console.log("여기 ");
                        console.log(openDt0);
                        console.log(openDt3);

                  $
                        .ajax({
                           url : "http://localhost:8080/controller/api/MovieListAPI",
                           async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                           ,
                           contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                           ,
                           type : "GET" //method
                           ,
                           dataType : "xml" // 수신타입
                           ,
                           success : function(data2, textStatus) {

                              var item = data2
                                    .getElementsByTagName("item");
                              var titleTag = data2
                                    .getElementsByTagName("title");
                              var posterTag = data2
                                    .getElementsByTagName("posters");
                              var docidTag = data2
                                    .getElementsByTagName("docid");
                              var reprlsdateTag = data2
                              .getElementsByTagName("reprlsdate");
                              

                              for (var i = 0; i < item.length; i++) {
                                 var title = titleTag[i].textContent;
                                 var poster = posterTag[i].textContent;
                                 var docid = docidTag[i].textContent;
                                 var reprlsdate = reprlsdateTag[i].textContent;

                                 if (movieNm0 == title && openDt0 == reprlsdate) {

                                    var posterSrc = document
                                          .getElementById("dayImgPoster0");
                                    var posterHref = document
                                          .getElementById("dayAPoster0");
                                    var docidHref = document
                                          .getElementById("dayADocid0");

                                    var audiAccValue = document
                                          .getElementById("audiAcc0");
                                    var audiCntValue = document
                                          .getElementById("audiCnt0");
                                    var audiChangeValue = document
                                          .getElementById("audiChange0");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc0 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt0 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange0 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    console.log(poster);
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm1 == title&& openDt1 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster1");
                                    var posterHref = document
                                          .getElementById("dayAPoster1");
                                    var docidHref = document
                                          .getElementById("dayADocid1");

                                    var audiAccValue = document
                                          .getElementById("audiAcc1");
                                    var audiCntValue = document
                                          .getElementById("audiCnt1");
                                    var audiChangeValue = document
                                          .getElementById("audiChange1");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc1 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt1 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange1 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm2 == title&& openDt2 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster2");
                                    var posterHref = document
                                          .getElementById("dayAPoster2");
                                    var docidHref = document
                                          .getElementById("dayADocid2");

                                    var audiAccValue = document
                                          .getElementById("audiAcc2");
                                    var audiCntValue = document
                                          .getElementById("audiCnt2");
                                    var audiChangeValue = document
                                          .getElementById("audiChange2");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc2 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt2 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange2 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm3 == title && openDt3 == reprlsdate ) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster3");
                                    var posterHref = document
                                          .getElementById("dayAPoster3");
                                    var docidHref = document
                                          .getElementById("dayADocid3");

                                    var audiAccValue = document
                                          .getElementById("audiAcc3");
                                    var audiCntValue = document
                                          .getElementById("audiCnt3");
                                    var audiChangeValue = document
                                          .getElementById("audiChange3");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc3 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt3 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange3 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm4 == title&& openDt4 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster4");
                                    var posterHref = document
                                          .getElementById("dayAPoster4");
                                    var docidHref = document
                                          .getElementById("dayADocid4");

                                    var audiAccValue = document
                                          .getElementById("audiAcc4");
                                    var audiCntValue = document
                                          .getElementById("audiCnt4");
                                    var audiChangeValue = document
                                          .getElementById("audiChange4");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc4 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt4 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange4 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm5 == title&& openDt5 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster5");
                                    var posterHref = document
                                          .getElementById("dayAPoster5");
                                    var docidHref = document
                                          .getElementById("dayADocid5");

                                    var audiAccValue = document
                                          .getElementById("audiAcc5");
                                    var audiCntValue = document
                                          .getElementById("audiCnt5");
                                    var audiChangeValue = document
                                          .getElementById("audiChange5");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc5 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt5 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange5 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm6 == title && openDt6 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster6");
                                    var posterHref = document
                                          .getElementById("dayAPoster6");
                                    var docidHref = document
                                          .getElementById("dayADocid6");

                                    var audiAccValue = document
                                          .getElementById("audiAcc6");
                                    var audiCntValue = document
                                          .getElementById("audiCnt6");
                                    var audiChangeValue = document
                                          .getElementById("audiChange6");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc6 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt6 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange6 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm7 == title && openDt7 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster7");
                                    var posterHref = document
                                          .getElementById("dayAPoster7");
                                    var docidHref = document
                                          .getElementById("dayADocid7");

                                    var audiAccValue = document
                                          .getElementById("audiAcc7");
                                    var audiCntValue = document
                                          .getElementById("audiCnt7");
                                    var audiChangeValue = document
                                          .getElementById("audiChange7");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc7 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt7 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange7 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm8 == title && openDt8 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster8");
                                    var posterHref = document
                                          .getElementById("dayAPoster8");
                                    var docidHref = document
                                          .getElementById("dayADocid8");

                                    var audiAccValue = document
                                          .getElementById("audiAcc8");
                                    var audiCntValue = document
                                          .getElementById("audiCnt8");
                                    var audiChangeValue = document
                                          .getElementById("audiChange8");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc8 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt8 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange8 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 } else if (movieNm9 == title && openDt9 == reprlsdate) {
                                    var posterSrc = document
                                          .getElementById("dayImgPoster9");
                                    var posterHref = document
                                          .getElementById("dayAPoster9");
                                    var docidHref = document
                                          .getElementById("dayADocid9");

                                    var audiAccValue = document
                                          .getElementById("audiAcc9");
                                    var audiCntValue = document
                                          .getElementById("audiCnt9");
                                    var audiChangeValue = document
                                          .getElementById("audiChange9");

                                    audiAccValue.textContent = "누적관객수 "
                                          + audiAcc9 + " 명";
                                    audiCntValue.textContent = "전날관객수 "
                                          + audiCnt9 + " 명";
                                    audiChangeValue.textContent = "전날대비 "
                                          + audiChange9 + "%";

                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "movieInfoPage?movieCate=일간박스오피스&Docid="
                                          + docid;

                                 }

                                 else {

                                 }
                              }
                           },
                           error : function(jqXHR, textStatus,
                                 errorThrown) {
                              console.log(jqXHR);
                              console.log(textStatus);
                              console.log(errorThrown);
                           }
                        });
               },
               error : function(jqXHR, textStatus, errorThrown) {
                  console.log(jqXHR);
                  console.log(textStatus);
                  console.log(errorThrown);
               }
            });
   }
