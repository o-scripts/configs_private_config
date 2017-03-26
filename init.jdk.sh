#!/bin/bash
## global variables
JDK_ROOT='/usr/lib/jvm'
JDK_DIR='java-8-openjdk-amd64'
## update-alternatives dir
ALTERNATIVES_DIR='/etc/alternatives'

link_exist()
{
    file appletviewer
    file appletviewer.1.gz
    file extcheck
    file extcheck.1.gz
    file idlj
    file idlj.1.gz
    file jar
    file jar.1.gz
    file jarsigner
    file jarsigner.1.gz
    file java
    file java.1.gz
    file javac
    file javac.1.gz
    file javadoc
    file javadoc.1.gz
    file javah
    file javah.1.gz
    file javap
    file javap.1.gz
    file jcmd
    file jcmd.1.gz
    file jconsole
    file jconsole.1.gz
    file jdb
    file jdb.1.gz
    file jdeps
    file jdeps.1.gz
    file jexec
    file jexec-binfmt
    file jhat
    file jhat.1.gz
    file jinfo
    file jinfo.1.gz
    file jjs
    file jjs.1.gz
    file jmap
    file jmap.1.gz
    file jps
    file jps.1.gz
    file jrunscript
    file jrunscript.1.gz
    file jsadebugd
    file jsadebugd.1.gz
    file jstack
    file jstack.1.gz
    file jstat
    file jstat.1.gz
    file jstatd
    file jstatd.1.gz
    file keytool
    file keytool.1.gz
    file native2ascii
    file native2ascii.1.gz
    file orbd
    file orbd.1.gz
    file pack200
    file pack200.1.gz
    file policytool
    file policytool.1.gz
    file rmic
    file rmic.1.gz
    file rmid
    file rmid.1.gz
    file rmiregistry
    file rmiregistry.1.gz
    file schemagen
    file schemagen.1.gz
    file serialver
    file serialver.1.gz
    file servertool
    file servertool.1.gz
    file tnameserv
    file tnameserv.1.gz
    file unpack200
    file unpack200.1.gz
    file wsgen
    file wsgen.1.gz
    file wsimport
    file wsimport.1.gz
    file xjc
    file xjc.1.gz
    echo $?
}

## remove all soft link
remove_link()
{
    sudo rm-vf appletviewer
    sudo rm-vf appletviewer.1.gz
    sudo rm-vf extcheck
    sudo rm-vf extcheck.1.gz
    sudo rm-vf idlj
    sudo rm-vf idlj.1.gz
    sudo rm-vf jar
    sudo rm-vf jar.1.gz
    sudo rm-vf jarsigner
    sudo rm-vf jarsigner.1.gz
    sudo rm-vf java
    sudo rm-vf java.1.gz
    sudo rm-vf javac
    sudo rm-vf javac.1.gz
    sudo rm-vf javadoc
    sudo rm-vf javadoc.1.gz
    sudo rm-vf javah
    sudo rm-vf javah.1.gz
    sudo rm-vf javap
    sudo rm-vf javap.1.gz
    sudo rm-vf jcmd
    sudo rm-vf jcmd.1.gz
    sudo rm-vf jconsole
    sudo rm-vf jconsole.1.gz
    sudo rm-vf jdb
    sudo rm-vf jdb.1.gz
    sudo rm-vf jdeps
    sudo rm-vf jdeps.1.gz
    sudo rm-vf jexec
    sudo rm-vf jexec-binfmt
    sudo rm-vf jhat
    sudo rm-vf jhat.1.gz
    sudo rm-vf jinfo
    sudo rm-vf jinfo.1.gz
    sudo rm-vf jjs
    sudo rm-vf jjs.1.gz
    sudo rm-vf jmap
    sudo rm-vf jmap.1.gz
    sudo rm-vf jps
    sudo rm-vf jps.1.gz
    sudo rm-vf jrunscript
    sudo rm-vf jrunscript.1.gz
    sudo rm-vf jsadebugd
    sudo rm-vf jsadebugd.1.gz
    sudo rm-vf jstack
    sudo rm-vf jstack.1.gz
    sudo rm-vf jstat
    sudo rm-vf jstat.1.gz
    sudo rm-vf jstatd
    sudo rm-vf jstatd.1.gz
    sudo rm-vf keytool
    sudo rm-vf keytool.1.gz
    sudo rm-vf native2ascii
    sudo rm-vf native2ascii.1.gz
    sudo rm-vf orbd
    sudo rm-vf orbd.1.gz
    sudo rm-vf pack200
    sudo rm-vf pack200.1.gz
    sudo rm-vf policytool
    sudo rm-vf policytool.1.gz
    sudo rm-vf rmic
    sudo rm-vf rmic.1.gz
    sudo rm-vf rmid
    sudo rm-vf rmid.1.gz
    sudo rm-vf rmiregistry
    sudo rm-vf rmiregistry.1.gz
    sudo rm-vf schemagen
    sudo rm-vf schemagen.1.gz
    sudo rm-vf serialver
    sudo rm-vf serialver.1.gz
    sudo rm-vf servertool
    sudo rm-vf servertool.1.gz
    sudo rm-vf tnameserv
    sudo rm-vf tnameserv.1.gz
    sudo rm-vf unpack200
    sudo rm-vf unpack200.1.gz
    sudo rm-vf wsgen
    sudo rm-vf wsgen.1.gz
    sudo rm-vf wsimport
    sudo rm-vf wsimport.1.gz
    sudo rm-vf xjc
    sudo rm-vf xjc.1.gz
}

## renew all soft link
renew_link()
{
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/appletviewer appletviewer
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/appletviewer.1.gz appletviewer.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/extcheck extcheck
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/extcheck.1.gz extcheck.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/idlj idlj
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/idlj.1.gz idlj.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jar jar
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jar.1.gz jar.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jarsigner jarsigner
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jarsigner.1.gz jarsigner.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/java java
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/java.1.gz java.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/javac javac
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/javac.1.gz javac.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/javadoc javadoc
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/javadoc.1.gz javadoc.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/javah javah
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/javah.1.gz javah.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/javap javap
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/javap.1.gz javap.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jcmd jcmd
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jcmd.1.gz jcmd.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jconsole jconsole
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jconsole.1.gz jconsole.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jdb jdb
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jdb.1.gz jdb.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jdeps jdeps
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jdeps.1.gz jdeps.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/lib/jexec jexec
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/lib/jar.binfmt jexec-binfmt
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jhat jhat
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jhat.1.gz jhat.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jinfo jinfo
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jinfo.1.gz jinfo.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jjs jjs
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jjs.1.gz jjs.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jmap jmap
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jmap.1.gz jmap.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jps jps
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jps.1.gz jps.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jrunscript jrunscript
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jrunscript.1.gz jrunscript.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jsadebugd jsadebugd
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jsadebugd.1.gz jsadebugd.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jstack jstack
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jstack.1.gz jstack.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jstat jstat
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jstat.1.gz jstat.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/jstatd jstatd
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/jstatd.1.gz jstatd.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/keytool keytool
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/keytool.1.gz keytool.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/native2ascii native2ascii
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/native2ascii.1.gz native2ascii.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/orbd orbd
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/orbd.1.gz orbd.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/pack200 pack200
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/pack200.1.gz pack200.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/jre/bin/policytool policytool
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/jre/man/man1/policytool.1.gz policytool.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/rmic rmic
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/rmic.1.gz rmic.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/rmid rmid
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/rmid.1.gz rmid.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/rmiregistry rmiregistry
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/rmiregistry.1.gz rmiregistry.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/schemagen schemagen
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/schemagen.1.gz schemagen.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/serialver serialver
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/serialver.1.gz serialver.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/servertool servertool
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/servertool.1.gz servertool.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/tnameserv tnameserv
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/tnameserv.1.gz tnameserv.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/unpack200 unpack200
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/unpack200.1.gz unpack200.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/wsgen wsgen
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/wsgen.1.gz wsgen.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/wsimport wsimport
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/wsimport.1.gz wsimport.1.gz
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/bin/xjc xjc
    sudo ln -s ${JDK_ROOT}/${JDK_DIR}/man/man1/xjc.1.gz xjc.1.gz
}

## do task
echo cd ${ALTERNATIVES_DIR}
#cd ${ALTERNATIVES_DIR}
tmp=`link_exist | grep  'cannot open'`
case $tmp in
    '')
        echo ok
        remove_link
        ;;
    *)
        echo error
        echo $tmp
        ;;
esac

renew_link

