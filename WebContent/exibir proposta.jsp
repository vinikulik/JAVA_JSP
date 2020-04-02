<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<body>


Testando os testes:<br /> <br />

<form action ="exibir resposta.jsp">

Meu nome é: ${param.nome} .<br /> <br />

Minha Profissão  é:  ${param.prof} .<br /> <br />

<%
String escolha = request.getParameter("prof");
System.out.println(escolha);
String x = request.getParameter("mes");
int mes = Integer.parseInt(x);	
System.out.println(mes);
int salario = 0;

String variavel [] = request.getParameterValues("1_resposta");

for(int i = 0; i<variavel.length; i++){
	out.println(variavel[i]+"");
}

if(escolha=="A"){
	salario = mes*1000;
}else if (escolha=="B"){
	salario = mes*100;
}else if (escolha =="C"){
	salario = mes*3000;
}else {

	salario = mes*1;
};
 	%>

Salário é: <%=salario %><br /> <br />

<input type="submit" value="Aceitar Proposta" / >
<input type="submit" value="Recusar Proposta" / ><br />

</form>
</body>
</html>