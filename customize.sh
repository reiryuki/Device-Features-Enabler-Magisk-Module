# space
ui_print " "

# var
UID=`id -u`

# log
if [ "$BOOTMODE" != true ]; then
  FILE=/data/media/"$UID"/$MODID\_recovery.log
  ui_print "- Log will be saved at $FILE"
  exec 2>$FILE
  ui_print " "
fi

# optionals
OPTIONALS=/data/media/"$UID"/optionals.prop
if [ ! -f $OPTIONALS ]; then
  touch $OPTIONALS
fi

# debug
if [ "`grep_prop debug.log $OPTIONALS`" == 1 ]; then
  ui_print "- The install log will contain detailed information"
  set -x
  ui_print " "
fi

# info
MODVER=`grep_prop version $MODPATH/module.prop`
MODVERCODE=`grep_prop versionCode $MODPATH/module.prop`
ui_print " ID=$MODID"
ui_print " Version=$MODVER"
ui_print " VersionCode=$MODVERCODE"
if [ "$KSU" == true ]; then
  ui_print " KSUVersion=$KSU_VER"
  ui_print " KSUVersionCode=$KSU_VER_CODE"
  ui_print " KSUKernelVersionCode=$KSU_KERNEL_VER_CODE"
else
  ui_print " MagiskVersion=$MAGISK_VER"
  ui_print " MagiskVersionCode=$MAGISK_VER_CODE"
fi
ui_print " "

# ram low
FILE=`find $MODPATH/system -type f -name *.xml`
if [ "`grep_prop dfe.ram.low $OPTIONALS`" == 1 ]; then
  ui_print "- Allows installing any Go version of Google apps"
  ui_print "  at Play Store"
  sed -i 's|<!--feature name="android.hardware.ram.low"/-->|<feature name="android.hardware.ram.low"/>|g' $FILE
  sed -i 's|<!--feature name="android.hardware.ram.low" /-->|<feature name="android.hardware.ram.low" />|g' $FILE
  ui_print " "
fi

# info
ui_print "- Play Store data will be cleared automatically"
ui_print " "






