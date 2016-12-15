<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>站内信箱</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="assets/js/vendor/datatables/css/dataTables.bootstrap.css">
    <link rel="stylesheet" href="assets/js/vendor/datatables/css/ColVis.css">
    <link rel="stylesheet" href="assets/js/vendor/datatables/css/TableTools.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">

 


    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      


      <!-- Make page fluid -->
      <div class="row">

        <!-- Fixed navbar -->
        <%@ include file="navbar.jsp" %>
        <!-- Fixed navbar end -->



        
        <!-- Page content -->
        <div id="content" class="col-md-12">

          <!-- page header -->
          <div class="pageheader">

            <h2><i class="fa fa-envelope" style="line-height: 48px;padding-left: 0;"></i> 站内信箱 </h2>

          </div>
          <!-- /page header -->

          <!-- content main container -->
          <div class="main horizontal-mail">

            <!-- row -->
            <div class="row">

              <div class="col-md-10">

                <div class="table-responsive inbox" id="mail-inbox">
                  <table  class="table table-datatable table-custom" id="inboxDataTable">
                    <thead>
                      <tr>
                        <th class="sort-alpha">From</th>
                        <th class="sort-alpha">Subject</th>
                        <th class="sort-amount">Date</th>
                        <th class="text-center no-sort">Attachment</th>
                      </tr>
                    </thead>
                    <tbody>
                      <s:iterator value="unreadMessages" status="st">
                          <tr class="odd unread" onclick="showMessage(<s:property value='#st.index'/>);">
                            <td><s:property value="userFrom" /></td>
                            <td><s:property value="title" /></td>
                            <td><s:property value="date" /></td>
                            <td class="text-center"><i class="fa fa-paperclip"></i></td>
                          </tr>
                      </s:iterator>
                      <s:iterator value="readMessages" status="st">
                        <tr class="even" onclick="showMessage(<s:property value='#st.index'/>);">
                          <td><s:property value="userFrom" /></td>
                          <td><s:property value="title" /></td>
                          <td><s:property value="date" /></td>
                          <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        </tr>
                      </s:iterator>
                    </tbody>
                  </table>
                </div>              


                <div class="mail-content" id="mail-content">

                  <div class="message">

                    <div class="header">
                      <h1 id="title">Mail Message Subject</h1>

                      <ul class="message-info">
                        <li>From: <em id="From">Dell MacApple</em></li>
                        <li>To: <em id="To">me, admin@minoral.com</em></li>
                        <li>Date: <em id="date">10.02.2014, 9:24am</em></li>
                      </ul>

                      <div class="actions">
                        <div class="btn-group">
                          <button type="button" class="btn btn-default"><i class="fa fa-reply"></i></button>
                          <button type="button" class="btn btn-default"><i class="fa fa-mail-reply-all"></i></button>
                          <button type="button" class="btn btn-default"><i class="fa fa-share"></i></button>
                        </div>

                        <button type="button" class="btn btn-default pull-right"><i class="fa fa-trash-o"></i></button>

                      </div>
                    </div>

                    <div class="content">

                      <p id="msgcontent">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                      </p>
                      

                    </div>

                  </div>
                                  


                </div>

              </div>


              
            </div>
            <!-- /row -->



          </div>
          <!-- /content container -->






        </div>
        <!-- Page content end -->






      </div>
      <!-- Make page fluid-->




    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="assets/js/vendor/summernote/summernote.min.js"></script>
    <script src="assets/js/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="assets/js/vendor/datatables/ColReorderWithResize.js"></script>
    <script src="assets/js/vendor/datatables/colvis/dataTables.ColVis.min.js"></script>
    <script src="assets/js/vendor/datatables/dataTables.bootstrap.js"></script>

    <script src="assets/js/minimal.min.js"></script>

    <script>
    $(function(){


      /****************************************************/
      /**************** ADVANCED DATATABLE ****************/
      /****************************************************/

      var oTable01 = $('#inboxDataTable').dataTable({
        "sDom":
          "R<'row table-heading'<'col-md-6 heading'><'col-md-6'Cf>r>"+
          "t",
        "iDisplayLength": 99999999,
        "oColVis": {
          "buttonText": '<i class="fa fa-cog"></i>',
          "sAlign": "right"
        },
        "oLanguage": {
          "sSearch": ""
        },
        "aoColumnDefs": [
          { 'bSortable': false, 'aTargets': [ "no-sort" ] }
        ],
        "aaSorting": [[ 3, "desc" ]],
        "sScrollY": "200px",
        "bPaginate": false
      });

      $('#inboxDataTable_wrapper .dataTables_filter input').attr("placeholder", "在信箱中搜索");

      $('#inboxDataTable_wrapper .heading').html('<h1>站内信箱</h1>');

      $('.ColVis_MasterButton').on('click', function(){
        var newtop = $('.ColVis_collection').position().top - 45; 

        $('.ColVis_collection').addClass('dropdown-menu');
        $('.ColVis_collection>li>label').addClass('btn btn-default');
        $('.ColVis_collection').css('top', newtop + 'px');
      });

      /* Add a click handler to the rows - this could be used as a callback */
      $("#inboxDataTable tbody tr").click( function( e ) {
        if ( $(this).hasClass('row_selected') ) {
          $(this).removeClass('row_selected');
        }
        else {
          oTable01.$('tr.row_selected').removeClass('row_selected');
          $(this).addClass('row_selected');
        }
      });

      $('#mail-inbox .mail-favourite').click(function(){
        $(this).toggleClass('active');
      });

      //load wysiwyg editor
      $('#message-wysiwyg').summernote({
        height: 158,   //set editable area's height
        toolbar: [
          //['style', ['style']], // no style button
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          //['insert', ['picture', 'link']], // no insert buttons
          //['table', ['table']], // no table button
          //['help', ['help']] //no help button
        ]
      });

      $("#mail-inbox .dataTables_scrollBody").niceScroll({
        cursorcolor: '#000000',
        zindex: 999999,
        bouncescroll: true,
        cursoropacitymax: 0.4,
        cursorborder: '',
        cursorborderradius: 0,
        cursorwidth: '5px'
      });

      oTable01.fnDraw();

      
    })
      
    </script>
    <script>
        function showMessage(i) {
            //var msg=${readMessages.get(i)};
            var msg=<s:property value="readMessage.get(i)" />;
            document.getElementById('title').value = msg.title;
            document.getElementById('From').value = msg.userFrom;
            document.getElementById('To').value = msg.userTo;
            document.getElementById('date').value = msg.date;
            document.getElementById('msgcontent').value = msg.content;
        }
    </script>
  </body>
</html>
      
