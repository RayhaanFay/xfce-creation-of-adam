#!/bin/bash
pushd $(dirname $(readlink -f $0))
history -r .color_history
set -o vi

savhist(){
	echo -e "\nTerminated"
	history -w .color_history
	exit
}

trap savhist SIGINT

CMD=""
outdir="prebuilt-assets"
tmpdir="/tmp/stick"

border=("bottom" 
		"top"
		"left"
		"right")

btn=("close"
	 "hide"
	 "maximize"
	 "maximize-toggled"
	 "menu"
	 "shade"
	 "shade-toggled"
	 "stick"
	 "stick-toggled")

echo -n "border color (format: #FFFFFF) : "
read -e bclr
history -s $bclr
echo -n "button hover color (format: #FFFFFF) : "
read -e hclr
history -s $hclr
echo -n "button pressed color (format: #FFFFFF) : "
read -e pclr
history -s $pclr


echo "Preparing dirs"
rm -rf out
rm -rf $tmpdir
mkdir -p $outdir
mkdir $tmpdir

echo "Writing colors"
cat assets/base.xpm | sed -e "s|#FFFFFF|$bclr|g" > $tmpdir/base.xpm
cat assets/themerc | sed -e "s|#FFFFFF|$bclr|g" > $tmpdir/themerc
cat assets/pixel.xpm | sed -e "s|#FFFFFF|$bclr|g" > $tmpdir/pixel.xpm
cat assets/prelight.xpm | sed -e "s|#555555|$hclr|g" > $tmpdir/prelight.xpm
cat assets/pressed.xpm  | sed -e "s|#000000|$pclr|g" > $tmpdir/pressed.xpm 

echo "Copying generated files"
cp $tmpdir/themerc $outdir/themerc
for i in ${border[@]}
do 
	for j in "a" "ina"
	do 
		cp $tmpdir/pixel.xpm $outdir/${i}-${j}ctive.xpm
		cp $tmpdir/pixel.xpm $outdir/top-left-${j}ctive.xpm
		cp $tmpdir/pixel.xpm $outdir/top-right-${j}ctive.xpm
		cp $tmpdir/pixel.xpm $outdir/bottom-left-${j}ctive.xpm
		cp $tmpdir/pixel.xpm $outdir/bottom-right-${j}ctive.xpm
	done
done
for i in 1 2 3 4 5
do 
		cp $tmpdir/pixel.xpm $outdir/title-${i}-active.xpm
		cp $tmpdir/pixel.xpm $outdir/title-${i}-inactive.xpm
done
for i in ${btn[@]}
do 
		cp $tmpdir/prelight.xpm $outdir/${i}-prelight.xpm
		cp $tmpdir/base.xpm $outdir/${i}-active.xpm
		cp $tmpdir/base.xpm $outdir/${i}-inactive.xpm
		cp $tmpdir/pressed.xpm $outdir/${i}-pressed.xpm
done

echo "cleanup temp dir"
rm -rf $tmpdir

echo "linking generated files"
for i in `ls $outdir`
do 
	ln -sf $outdir/$i $i
done

echo -e "\nDone"
history -w .color_history
popd