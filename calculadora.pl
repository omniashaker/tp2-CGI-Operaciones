#!/usr/bin/perl -w

use CGI;

my $form = new CGI;
my $n1 = $form -> param('numero1');
my $n2 = $form -> param('numero2');
my $oper = $form -> param('operador');



if($n1 =~ /[^\d+]/ || $n2 =~ /[^\d+]/){
    print "Los parametros deben ser numericos";
    exit;
}


my $resultado;
if($oper eq "sumar"){
    $resultado = $n1 + $n2;
}elsif ($oper eq "restar"){
    $resultado = $n1 - $n2;
}elsif($oper eq "multiplicar"){
    $resultado = $n1 * $n2;
}else{
    $resultado = $n1 /$n2;
}
print "Content-Type: text/html\n\n";
print "<html>\n<head>\n";
print "<title> Resultado</title>\n</head>\n";
print "<body>">
print "<p> El resultado de $oper $n1 y $n2 es <b> $resultado</b></p>\n"
print "</body>\n</html>\n";
