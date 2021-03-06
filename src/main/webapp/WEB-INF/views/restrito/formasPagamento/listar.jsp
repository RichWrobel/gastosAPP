<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="decorator" content="admin" /> 
	<title>Home</title>
	<script src="<c:url value='/resources/js/Controller/FormasPagamentoController.js' />"></script>
</head>
<body>
<br />
<div class="row-fluid" ng-controller="FormasPagamentoController" data-ng-init="listar(0);">

	<div class="page-header">
		<h1>Listagem de Formas Pagamento</h1>
	</div>
	
	<div class="col-xs-12 col-md-12">
		<ul class="breadcrumb">
			<li class="active"><span class="glyphicon glyphicon-file">&nbsp;</span><a href="<c:url value='/formasPagamento/'/>">Novo</a></li>
			<li class="active"><span class="glyphicon glyphicon-list-alt">&nbsp;</span>Listar</li>
		</ul>
	</div>
	
	<div class="col-xs-12 col-md-12">
		<div class="row form">
        	<div class="alert alert-dismissable nao-visivel">
        		 <button type="button" class="close">&times;</button>
        		 <div class = "mensagens"></div>
        	</div>
	    </div> 
	</div> 
	
	<div class="col-xs-8 col-md-8">
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th class="text-center" width="80%">Forma Pagamento</th>
						<th class="text-center" width="10%">Editar</th>
						<th class="text-center" width="10%">Excluir</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-show="!formaPagamento.length">
						<td>Nenhum registro encontrado!</td>
					</tr>
					<tr ng-show="formaPagamento.length"  ng-repeat="forma in formaPagamento">
						<td>{{forma.formaPagamento}}</td>
						<td class="text-center">
							<span class="fa fa-edit"></span>
						</td>
						<td class="text-center">
							<a href="" ng-click="excluir(forma)">
								<span class="fa fa-trash-o"></span>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
