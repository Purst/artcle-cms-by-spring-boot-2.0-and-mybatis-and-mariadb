<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<jsp:include page="/common/link"></jsp:include>

<title>AWS Service Detail</title>

</head>

<body id="page-top">

<form id="detailForm" method="post">
	<input type="hidden" id="id" name="id" value="${dto.id}" />

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

					<div class="card o-hidden border-0 shadow-lg my-5 border-left-primary">
						<div class="card-body p-0">		
							<div class="col-auto">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">AWS Service Detail</h1>
									</div>
									<div class="form-group row">												
										
										<div class="col-sm-1 mb-3 mb-sm-0">
											제목
										</div>
										<div class="col-sm-11 mb-3 mb-sm-0">
											<input type="text" class="form-control col" name="title" 
											       value="${dto.title}" disabled>
										</div>																								
									</div>
									
									<div class="form-group fa-pull-right">
											${dto.nickname}											                                    		
	                                </div>
	                                
									<div class="form-group">
										<textarea class="form-control" name="contents" 
												  placeholder="내용" rows="20" readonly>${dto.contents}</textarea>
									</div>
	                                
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
	                                    	<input type="button" class="btn btn-primary btn-user btn-block" 
	                                    		   value="삭제" onclick="javascrit:remove('${dto.id}')"/>
	                                    </div>
	                                    <div class="col-sm-6">				                                    
											<input type="button" class="btn btn-secondary btn-user btn-block" 
												   value="목록" onclick="history.back();"/>
										</div>		
	                                </div>
									
										
								</div>
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
	<a class="scroll-to-top rounded" href="/#page-top"> <i class="fas fa-angle-up"></i></a>

	<jsp:include page="/common/script"></jsp:include>
	
</form>

<script>

function remove(id) {	
	if( !confirm('삭제하시겠습니까?') ) {
		return;
	}
	
	$('#detailForm').attr('target', '_self').attr('action', '/article/remove').attr('method', 'post').submit();
}

</script>

	
</body>

</html>