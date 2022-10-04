<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>

    <jsp:include page="/common/link"></jsp:include>
    <title>Miracom Cloud Beta</title>

</head>

<body id="page-top">

<form id="listForm" action="/article/detail" method="post">
	<input type="hidden" id="id" name="id" />

    <!-- Page Wrapper -->
    <div id="wrapper">

        <jsp:include page="/common/sidebar"></jsp:include>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <jsp:include page="/common/topbar"></jsp:include>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">AWS Services</h1>
                    <p class="mb-4">AWS Services are outstanding services. please visit the <a target="_blank"
                            href="https://aws.amazon.com">AWS site</a>.</p>
					
                    <div class="my-2"></div>
										
					<a href="/article/add" class="btn btn-primary btn-icon-split btn-sm">
                        <span class="icon text-white-50"></span>
                        <span class="text">Register New Service</span>
                    </a>
                    
                    
                    <div class="my-2"></div>
						
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">AWS Detail</h6>
                        </div>                        
						
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable">
                                    <thead>
										<tr>											
											<th aria-sort="descending">번호</th>
											<th>서비스</th>
											<th>설명</th>
											<th>작성자</th>
											<th>등록일시</th>
										</tr>
									</thead>
									<tbody>
				
									<c:forEach items="${list}" var="article">
										<tr>	
											<td>${article.id}</td>
											<td><a href="javascript:view('${article.id}')">${article.title}</a></td>
											<td>${article.contents}</td>
											<td>${article.nickname}</td>
											<td>${article.reg_date}</td>
										</tr>
									</c:forEach>
				
									</tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <jsp:include page="/common/footer"></jsp:include>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    
    <jsp:include page="/common/script"></jsp:include>

</form>
    
<script>    	

$(document).ready(function() {
	sortIdAsDesc();
});

function sortIdAsDesc() {
	$('#dataTable').DataTable({
		order : [ [ 0, 'desc' ] ],
		ordering : true,
		serverSide : false,
		destroy : true
	});
}

function view(id) {
	$('#id').val(id);
	$('#listForm').attr('target', '_self').submit();
}

</script>

</body>

</html>