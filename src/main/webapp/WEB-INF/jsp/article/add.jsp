<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<jsp:include page="/common/link"></jsp:include>

<title>AWS Service Register</title>

</head>

<body id="page-top">

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
										<h1 class="h4 text-gray-900 mb-4">AWS Service Register</h1>
									</div>
									<form class="user" action="./doAdd" method="POST"
										  onsubmit="submitAddForm(this); return false;">
										<div class="form-group">												
											<input type="text" class="form-control col" name="title" placeholder="제목">																								
										</div>
										<div class="form-group">
											<textarea class="form-control" name="contents" 
													  placeholder="내용" rows="20"></textarea>
										</div>
										
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
		                                    	<input type="text" class="form-control col" name="nickname" placeholder="닉네임">
		                                    </div>
		                                    <div class="col-sm-6">				                                    
												<input type="password" class="form-control col" name="password" placeholder="비밀번호">
											</div>		
		                                </div>
		                                										
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
		                                    	<input type="submit"  class="btn btn-primary btn-user btn-block" 
		                                    		   value="작성" />
		                                    </div>
		                                    <div class="col-sm-6">				                                    
												<input type="reset" class="btn btn-secondary btn-user btn-block" 
													   value="취소" onclick="history.back();"/>
											</div>		
		                                </div>							
									</form>									
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
	
	<script>

		function submitAddForm(form) {
			form.title.value = form.title.value.trim();
			if( form.title.value.length == 0) {
				alert('제목을 입력해주세요.');
				form.title.focus();
				
				return false;
			}
			
			form.contents.value = form.contents.value.trim();
			if( form.contents.value.length == 0) {
				alert('내용을 입력해주세요.');
				form.title.focus();
				
				return false;
			}
			
			form.nickname.value = form.nickname.value.trim();
			if( form.nickname.value.length == 0) {
				alert('닉네임을 입력해주세요.');
				form.nickname.focus();
				
				return false;
			}
			
			form.password.value = form.password.value.trim();
			if( form.password.value.length == 0) {
				alert('비밀번호를 입력해주세요.');
				form.password.focus();
				
				return false;
			}
			
			form.submit();
		}
	
	
	</script>

</body>

</html>