<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | File Upload</title>

    <link href="manage/css/bootstrap.min.css" rel="stylesheet">
    <link href="manage/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="manage/css/animate.css" rel="stylesheet">
    <link href="manage/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="manage/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="manage/css/style.css" rel="stylesheet">

</head>

<body>

 
       
        <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Dropzone Area</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_file_upload.html#">Config option 1</a>
                                </li>
                                <li><a href="form_file_upload.html#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="my-awesome-dropzone" class="dropzone" action="<%=path %>/upload/imgUpload.action" enctype="multipart/form-data" >
                            <div class="dropzone-previews"></div>
                            <button type="submit" class="btn btn-primary pull-right">Submit this form!</button>
                        </form>
                        <div>
                            <div class="m text-right"><small>DropzoneJS is an open source library that provides drag'n'drop file uploads with image previews: <a href="https://github.com/enyo/dropzone" target="_blank">https://github.com/enyo/dropzone</a></small> </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>

            </div>
   



    <!-- Mainly scripts -->
    <script src="manage/js/jquery-2.1.1.js"></script>
    <script src="manage/js/bootstrap.min.js"></script>
    <script src="manage/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="manage/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="manage/js/inspinia.js"></script>
    <script src="manage/js/plugins/pace/pace.min.js"></script>

    <!-- DROPZONE -->
    <script src="manage/js/plugins/dropzone/dropzone.js"></script>


    <script>
        $(document).ready(function(){

            Dropzone.options.myAwesomeDropzone = {

                autoProcessQueue: false,
                uploadMultiple: true,
                parallelUploads: 100,
                maxFiles: 100,

                // Dropzone settings
                init: function() {
                    var myDropzone = this;

                    this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.processQueue();
                    });
                    this.on("sendingmultiple", function() {
                    });
                    this.on("successmultiple", function(files, response) {
                    });
                    this.on("errormultiple", function(files, response) {
                    });
                }

            }

       });
    </script>

</body>

</html>