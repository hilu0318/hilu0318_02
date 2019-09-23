<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <!-- 부트스트랩 -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style media="screen">
      .top-30 {
        top:30px;
      }
      .mar-top-30 {
        margin-top: 30px;
      }
      .input_align_right {
        text-align: right;
        padding-right:5px;
      }
      input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button {
          -webkit-appearance: none;
          margin: 0;
      }
    </style>
    <script src="resources/jquery/js/jquery-3.4.1.js"></script>
  </head>

  <body>
    <div class="container mar-top-30">
      <div class="row">
        <div class="col-md-8 text-right">
          <button type="button" name="iqry_cust_list" class="btn btn-primary" onclick="iqryCustList(event)">조회</button>
        </div>
      </div>
      <!-- 고객 리스트 -->
      <div class="row">
        <div class="col-md-8">

          <table id="cust_list" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th class="col-md-1">No.</th>
                <th class="col-md-3">cust_no</th>
                <th class="col-md-4">cust_nm</th>
                <th class="col-md-4">cons_emp_nm</th>
              </tr>
            </thead>
            <tbody id="cust_list_tbody">

            </tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- 상담원 리스트 -->
    <div class="container mar-top-30">
      <div class="row">
        <div class="col-md-8 text-right">
          <button type="button" name="iqry_cons_list" class="btn btn-primary" onclick="iqryConsList(event)">조회</button>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8">

          <table id="asgn_list" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th class="col-md-1" id="111">No.</th>
                <th class="col-md-5">cons_empno</th>
                <th class="col-md-5">cons_emp_nm</th>
                <th class="col-md-1">asgn_cnt</th>
              </tr>
            </thead>
            <tbody id="asgn_list_tbody">

            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="container mar-top-30">
      <!-- 상담원 배정기준 정하기 -->
      <div class="row">
        <div class="col-md-8 text-right">
            <button type="button" name="save_asgn_info" class="btn btn-primary" onclick="iqryAsgnInfo(event)">조회</button>
            <button type="button" name="save_asgn_info" class="btn btn-primary" onclick="rgstAsgnInfo(event)">저장</button>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8">
          <table id="asgn_list" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th class="col-md-1 text-center">
                  <input type="checkbox" id="t_check">
                </th>
                <th class="col-md-1 text-center">No.</th>
                <th class="col-md-4">cons_empno</th>
                <th class="col-md-5">cons_emp_nm</th>
                <th class="col-md-1">asgn_ord</th>
                <th class="col-md-1">asgn_rate</th>
              </tr>
            </thead>
            <tbody id="cons_empno_list_tbody">

            </tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- 스크립트 시작 -->
    <script src="defaultFunc.js"> </script>
    <script type="text/javascript">
      var cust_list = document.getElementById("cust_list_tbody");
      var nObj =  [ {"no":"0", "cust_no":"sss0", "cust_nm":"cust_nm0", "cons_emp_nm":"cons_emp_nm0"}
                  , {"no":"1", "cust_no":"sss1", "cust_nm":"cust_nm1", "cons_emp_nm":"cons_emp_nm1"}
                  , {"no":"2", "cust_no":"sss2", "cust_nm":"cust_nm2", "cons_emp_nm":"cons_emp_nm2"}];
      //배정리스트에 데이터 셋팅하는 함수. Json으로 받아야함.
      //setCustListTable(cust_list, nObj);
      setListTable(cust_list, nObj);

      var cons_empno_list = document.getElementById("cons_empno_list_tbody");
      var nObj1 = [ {"no":"1", "cons_empno":"1111", "cons_emp_nm":"김길동", "asgn_ord":"2", "asgn_rate":"30"}
                  , {"no":"2", "cons_empno":"2222", "cons_emp_nm":"홍길동", "asgn_ord":"1", "asgn_rate":"50"}
                  , {"no":"3", "cons_empno":"3333", "cons_emp_nm":"장길동", "asgn_ord":"3", "asgn_rate":"20"}];
      setConsEmpnoTable(cons_empno_list, nObj1);
      var nnn = $('#111').text();
      var nReq = getReqInst();
      //nReq.open('GET', '/test02.html?nn=11', false);
      //nReq.send();

      function iqryCustList(event){
        //var tUrl = "/JBH/0101/R";
        var tUrl = "/test02.html?sdf=1212";
        nReq.open('GET', tUrl, true);
        nReq.send();
        var nResult = nReq.responseText;
        console.log(nResult);
      }

      function iqryConsList(event){
        var tUrl = "/JBH/0102/R";
        nReq.open('GET', tUrl, true);
        nReq.send();
        var nResult = nReq.responseText;
        console.log(nResult);
      }

      function iqryAsgnInfo(event) {
        var tUrl = "/JBH/0102/R";
        nReq.open('GET', tUrl, true);
        nReq.send();
        var nResult = nReq.responseText;
        console.log(nResult);
      }

      function rgstAsgnInfo(event) {
        var tUrl = "/JBH/0102/W";
        nReq.open('GET', tUrl, true);
        nReq.send();
        var nResult = nReq.responseText;
        console.log(nResult);
      }


    </script>


    <script src="resources/jquery/js/jquery.min.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
