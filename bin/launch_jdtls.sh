#!/usr/bin/env bash

# NOTE:
# This doesn't work as is on Windows. You'll need to create an equivalent `.bat` file instead
#
# NOTE:
# If you're not using Linux you'll need to adjust the `-configuration` option
# to point to the `config_mac' or `config_win` folders depending on your system.

case Darwin in
Linux)
	CONFIG="$HOME/.local/share/nvim/lspinstall/java/config_linux"
	;;
Darwin)
	CONFIG="$HOME/.local/share/nvim/lspinstall/java/config_mac"
	;;
esac

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ]; then
	if [ -x "$JAVA_HOME/jre/sh/java" ]; then
		# IBM's JDK on AIX uses strange locations for the executables
		JAVACMD="$JAVA_HOME/jre/sh/java"
	else
		JAVACMD="$JAVA_HOME/bin/java"
	fi
	if [ ! -x "$JAVACMD" ]; then
		die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
	fi
else
	JAVACMD="java"
	which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# JAR="$HOME/.config/nvim/.language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_*.jar"
JAR="$HOME/.local/share/nvim/lspinstall/java/plugins/org.eclipse.equinox.launcher_*.jar"
GRADLE_HOME=$HOME/gradle "$JAVACMD" \
	-Declipse.application=org.eclipse.jdt.ls.core.id1 \
	-Dosgi.bundles.defaultStartLevel=4 \
	-Declipse.product=org.eclipse.jdt.ls.core.product \
	-Dlog.protocol=true \
	-Dlog.level=ALL \
	-javaagent:$HOME/.local/share/nvim/lspinstall/java/lombok.jar \
	-Xms1g \
	-Xmx2G \
	-jar $(echo "$JAR") \
	-configuration "$CONFIG" \
	-data "${1:-$HOME/workspaces/java}" \
	--add-modules=ALL-SYSTEM \
	--add-opens java.base/java.util=ALL-UNNAMED \
	--add-opens java.base/java.lang=ALL-UNNAMED

# for older java versions if you wanna use lombok
# -Xbootclasspath/a:/usr/local/share/lombok/lombok.jar \

# -javaagent:/usr/local/share/lombok/lombok.jar \
