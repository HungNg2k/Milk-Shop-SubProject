<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Thêm ${title} Mới</title>
<body>
	<div class="ts-main-content">
		<%@include file="/WEB-INF/views/layouts_master/admin/admin_menu.jsp"%>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">Thêm ${title} Mới</h2>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">Thêm ${title} Mới</div>
									<div class="panel-body">
										<form:form method="POST" action="add" modelAttribute="userDTO" class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-2 control-label">Tên Khách Hàng:</label>
												<div class="col-sm-10">
													<form:input path="fullName" placeholder="Tên Khách Hàng" class="form-control"/>
													<form:errors path="fullName" cssClass="text-danger" htmlEscape="false" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">SĐT Khách Hàng:</label>
												<div class="col-sm-10">
													<form:input path="phoneNumber" placeholder="SĐT Khách Hàng:" class="form-control"/>
													<form:errors path="phoneNumber" cssClass="text-danger" htmlEscape="false"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Email:</label>
												<div class="col-sm-10">
													<form:input path="email" placeholder="Email" class="form-control"/>
													<form:errors path="email" cssClass="text-danger" htmlEscape="false"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Địa Chỉ:</label>
												<div class="col-sm-10">
													<form:input path="address" placeholder="Địa Chỉ" class="form-control"/>
													<form:errors path="address" cssClass="text-danger" htmlEscape="false"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Tên Tài Khoản:</label>
												<div class="col-sm-10">
													<form:input path="userName" placeholder="Tên Tài Khoản" class="form-control"/>
													<form:errors path="userName" cssClass="text-danger" htmlEscape="false"/>
												</div>
											</div>							
											<div class="form-group">
												<label class="col-sm-2 control-label">Mật Khẩu:</label>
												<div class="col-sm-10">
													<form:input path="passWord" placeholder="Mật Khẩu" class="form-control"/>
													<form:errors path="passWord" cssClass="text-danger" htmlEscape="false" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Loại Tài Khoản:</label>
												<div class="col-sm-10">
													<form:select title="Chọn loại tài khoản" multiple="true" path="role" class="selectpicker">
														<form:option value="ROLE_USER" label="User"/>
														<form:option value="ROLE_ADMIN" label="Admin"/>
													</form:select>
													<form:errors path="role" cssClass="text-danger" htmlEscape="false" />
												</div>
												
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Tình Trạng:</label>
												<div class="col-sm-10">
													<form:select path="enabled" class="selectpicker">
														<form:option value="1" label="Hoạt Động"/>
														<form:option value="0" label="Ngưng Hoạt Động"/>
													</form:select>
													
												</div>
												
											</div>
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2">
													<button class="btn btn-primary" type="submit" style="font-size: 14px">THÊM</button>
												</div>
											</div>
										</form:form>

									</div>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

