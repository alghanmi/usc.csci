Rami's Guide to USC Computing
=============================
In an effort to streamline my personal computing experience using the computing and network resources at the [University of Southern California](http://www.usc.edu/), I am summarizing my experiences and customizations such as dot files, scripts and other resources.

The [Information Technology Services](http://www.usc.edu/its/) division at USC provides detailed information on all computing facilities and services at USC. Some of the key services include:
* [USC Account Activation](https://secweb.usc.edu/cgi-local/firstlogin/showform?form=activate)
* [USC Wireless](http://www.usc.edu/its/wireless/) and [VPN](http://www.usc.edu/its/vpn/) access
* [Student Computer Registration](http://www.usc.edu/its/connect/registration.html)
* The USC [Software Repository](http://software.usc.edu/)
* [Google Apps](http://google.usc.edu/) at USC. This is, of course, a no-brainer.


USC Email
---------
The initial method to access USC Email is through the [USC Web Mail](https://email.usc.edu/) client. As with most standard non-Web2.0 web-mail clients, you will find this one to be boring, unproductive and mostly annoying. You, of course, have the option of using one of ITSs [supported mail user agents](http://www.usc.edu/its/email/) (a.k.a email client) to get your email. However, you need to keep in mind these _important_ caveats:

1. USC Students only have a 75MB email quota!
1. USC's [EMail Retention Policy](http://policies.usc.edu/p5infoTech/email_retention.pdf) stipulates that emails older than _one year_ are **automatically deleted**!
1. The USC Web Mail address book can only hold 250 entries! (compare that to your Facebook friend count)
1. Attachment size is limited to 25MB.

###Forwarding to GMail
A number of students resolve this issue by forwarding their USC email to their personal GMail account which is a feature available through the Web Mail client. This is a completely acceptable solution if done the right way. There are common pitfalls, though, that may negatively reflect on you as a professional and student. This is still true if you use other email services like Yahoo! or Hotmail, however, I will be discussing in terms of GMail since it is one of the most used services. Here are some of the common pitfalls and ways to avoid them:

####USC Email Over-Quota
If your USC Web Mail client is configured to retain a copy of each forwarded message and you don't regularly cleanup your inbox, people sending you email messages will receive an over-quota message from the USC servers although the email already went through to your Gmail inbox. You will never know about this until your professor or TA mentions that to you in class. As a TA, I see this with _every_ class-wide email I send. Given the minimal quota USC provides for email, all you need is 4 emails with 20MB attachments and you will be over-quota. 

You can fix this simply by configuring the USC Web Mail client not keep a copy on USC servers.

####The McLoven Effect
In many cases, your GMail account is named after a nick name, pet name, pseudo name, etc. When you reply from your GMail account, your professor or TA will see that name and may not be able to directly associate it with you which is unprofessional from your part and frustrating for your teachers.

GMail offers a feature to [customize your _from_ address](https://mail.google.com/mail/help/intl/en/switch.html) and set GMail to automatically reply from the address the email was sent to (win-win).

####Different Given and Legal Names
The student rosters at USC will usually hold your legal name whereas you may be known to your friends with a different given name that could be your middle name or American name for some international students. It is safe to assume that your _from_ address will reflect that name which may cause identification problems with your teachers.

Therefore, follow the instructions in the previous point to disambiguate your name.

###USC Google Apps
One of the best services that ITS ever provided to USC students is providing [USC-branded Google Apps](http://google.usc.edu/) for USC students. This allows you to use most of Google's best services like GMail, Calendar and Docs with your official USC account. The advantages of using USC's Google Apps include:

####More Storage for Email & Docs
The standard GMail account has around 7GB of storage. USC Google Apps provides you with **25GB** of email storage. Also, with the launch of Google Drive storage, you should get more for documents and reports.

####USC-based Authentication & Authorization
Access to you USC Google Apps will secured via [USC's Single Sign-on](https://shibboleth.usc.edu/docs/google-apps/) feature, hence, in sync with all your USC services. This is even more helpful when sharing documents, for example, with other students because you are guaranteed that they will be using their USCNet credentials to access USC's Google Docs.

####Retain ITS Support & Better SLA for USC's Google Services
When using USC Google Apps, you are entitled to full 24/7 support from [ITS Customer Service](http://www.usc.edu/its/csc/) which could be a life-saver when you are locked-out of your account or if it got hacked.

It is also worth noting that the Google Apps services provided to USC have a much stricter Service Level Agreement (SLA) than the one provided for the _free_ GMail service, i.e. it is more reliable than GMail itself.

####Your GMail and USC Google Apps Email Can Co-Exist
By enabling the [Multiple Sign-in](http://support.google.com/accounts/bin/answer.py?hl=en&answer=1721977) feature in your main Google Account, you can have up to 10 Google and Google Apps accounts logged-in at the same time. This makes it easier to separate your personal and school accounts.

To sign-up for USC Google Apps, visit [http://getgoogle.usc.edu/](http://getgoogle.usc.edu/) and click on "Sign Up Now."

Student Computing Facility (SCF)
--------------------------------
Students have access to two general-purpose time-share servers:
* `aludra.usc.edu`
* `nunki.usc.edu`
Although `aludra` is the more powerful machine, `nunki` is not used as much. Therefore, you may find it - at times - more suitable to work with. You can check the load on each machine by using the `uptime` command which shows you the number of users on the system and the system load in the last 1, 5 and 15 minutes.

Throughout [USCNet](https://secweb.usc.edu/uscnet/login), your account username is the same as the username of your USC email address, i.e. the part before '@' sign. The username, for example, of ttrojan@usc.edu is ttrojan.


###Connecting to an SCF machine
1. MacOs or Linux - open a terminal and type the following command:
```bash
ssh -l username aludra.usc.edu
```
1. Windows - you need to download an ssh client since Windows does not provide a native one. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) is a free, lightweight and reliable client supported by [ITS](http://www.usc.edu/its/ssh/putty.html). [X-Win32](http://www.usc.edu/its/unix/xservers/xwin32.html) is another client supported by ITS that, unlike PuTTY, supports X-Windows application. In other words, it supports UNIX applications that require a GUI. You should attempt to use PuTTY as your main SSH client and X-Win32 only when you need access to GUI-based applications because X-Win32 is a large program that requires more resource to run on your own machine and could be unreliable at times specially with a weak and/or wireless network connection.


The FightOn! Development Environment
------------------------------------
In many of your classes, you will need to use SCF computing resource to develop and test applications. In my capacity as a student and TA who worked with many students in basic programming courses, I compiled a set of tools, scripts and configuration files that would help USC students to create a development environment worthy of their time and code.

I admit that there is a learning curve to many of these tools. However, they are basic skills that you need for your trade. Once you learn them, you will use them for life and be part of your skillset.

###GNU Screen

###Emacs




License
-------
Unless otherwise noted, the code in this repository is licensed under the [MIT License](http://www-scf.usc.edu/~alghanmi/docs/license.mit.txt) while non-code portions are under the [Creative Commons Attribution-ShareAlike 3.0](http://creativecommons.org/licenses/by-sa/3.0/)
