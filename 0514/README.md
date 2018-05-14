<pre>
<code>
cd /etc/yum.repos.d 
vi CentOs~repo 
<br/>
scentOS<br/>
firewall configuration -Trusted Services<br/>
Mail(SMTP)열기-mail보내는 서버<br/>
<br/>
rpm <br/>
yum install sendmail sendmail-cf<br/>
<br/>
cd /etc/mail<br/>
mv ./sendmail.cf sendmail.cf.bak<br/>
cp ./snedmail.mc snedmail.mc.bak<br/>
<br/>
vi sendmail.mc<br/>
:set number<br/>
116라인 Addr=0.0.0.0<br/>
160 MASQUERADE_AS('chimi.com')dnl<br/>
166 #을 바꿈<br/>
FEATURE(masquerade_envelope)dnl<br/>
m4 sendmail.mc > sendmail.cf<br/>
<br/>
<br/>
vi sendmail.cf<br/>
97 Djchimi.com<br/>
447 SmtpGreetingMeessage=$j Sendmail ; $b<br/>
188 20480000<br/>
<br/>
vi local-host-name<br/>
2라인 chimi.com<br/>
<br/>
vi access<br/>
Connect:192.168.56   RELAY<br/>
<br/>
\# makemap hash /etc/mail/access < /etc/mail/access<br/>
\# service saslauthd start<br/>
\# service sendmail start<br/>
<br/>
service saslauthd stop <br/>
service sendmail stop<br/>
chkconfig --level 345 saslauthd on<br/>
chkconfig --level 345 sendmail on<br/>
yum -y install telnet<br/>
telnet 192.168.56.4 25<br/>
ehlo chimi.com<br/>
mail from:admin@chimi.com<br/>
rcpt to:rladkfma0208@gmail.com<br/>
data<br/>
subject:제목<br/>
아무거나 쓰기 <br/>
.<br/>
<br/>
https://javaee.github.io/javamail/<br/>
Download JavaMail Release<br/>
javax.mail-1.6.1.jar download<br/>
<br/>
server 도메인 설정하기 <br/>
windows C:\Windows\System32\drivers\etc\hosts<br/>
192.168.56.4 smtp.chimi.com<br/>
cmd에서 확인하기> ping smtp.chimi.com<br/>
<br/>
<br/>
http://www.servlets.com/cos/javadoc/com/oreilly/servlet/MultipartRequest.html<br/>
파일 업로드 하는 것<br/>
cos-26Dec2008.zip<br/>
\cos-26Dec2008\lib\cos.jar를 현 프로젝트 WEB-INF/lib/에 두기<br/>
<br/>
http://www.oracle.com/technetwork/java/jaf11-139815.html<br/>
JavaBeans Activation Framework 1.1.1 jaf다운<br/>
jaf-1.1.1/activation.jar 현 프로젝트 WEB-INF/lib/에 두기<br/>
<br/>
https://james.apache.org/<br/>
java mail server임 community<br/>
http://mirror.apache-kr.org/james/server/<br/>
 james-2.3.2.1-src.zip<br/>
-----------<br/>
<span style="text-decoration:line-through"><br/>
james-binary-2.3.2.1.zip  c://로 붙여 넣기<br/>
C:\james-2.3.2.1\apps james.sar 압축 풀기<br/>
C:\james-2.3.2.1\apps\james\SAR-INF\config.xml 수정<br/>
73라인<servername>localhost</servername><br/>
         <servername>127.0.0.1</servername><br/>
818 <account login="admin" password="1234"/><br/>
783 <server>127.0.0.1</server> 활성<br/>
783 <server>10.10.10.80</server><br/>
          <server>168.126.63.1</server><br/>
cmd > cd C:\james-2.3.2.1\bin<br/>
>run.bat<br/>
james-2.3.2.1를 james로 이름 바꿈<br/>
</span>
-----------<br/>
다시안되서 <br/>
https://archive.apache.org/dist/james/server/<br/>
apache-james-2.3.2.zip 다운<br/>
C:\james-2.3.2\apps james.sar 압축 풀기<br/>
C:\james-2.3.2\apps\james\SAR-INF\config.xml 수정<br/>
73  <servername>localhost</servername><br/>
         <servername>10.10.10.87</servername><br/>
816  <account login="admin" password="1234"/><br/>
781  <server>127.0.0.1</server><br/>
 주석풀기<server>168.126.63.1</server><br/>
<br/>
cmd>>c:\james-2.3.2\bin>run.bat<br/>
다른 cmd>> telnet localhost 4555<br/>
Login id: admin<br/>
Password:1234<br/>
adduser chimi 1234<br/>
<br/>
0514/sendmail.jsp 코드 수정 <br/>
21 String mailserver="localhost";<br/>
38 t.connect(mailserver,"chimi","1234");<br/>
mail.html돌려서 되는진 확인<br/>
</code>
</pre>












