#!/bin/bash

#!/bin/bash
file=list_region_createvm.txt
while IFS= read -r locationset
do

#start command
TimeSleepCreateWait=($(shuf -i 15-45 -n 1))
sleep $TimeSleepCreateWait

echo "$locationset"
location="$locationset"
echo $location >> created.txt
echo > VMName.txt

LSTWORDARR=(
"ubuNtu"
"liNux"
"clustEr"
"cloudEr"
"hostsErvEr"
"sErvEr"
"NodEjs"
"dockEr"
"rEdisubuNtu"
"postgE"
"cdNNEtwork"
"publicmAiN"
"iNstANcEf"
"AblAutor"
"AblAuts"
"AblAzE"
"AblEdEr"
"AblEgAtE"
"AblEgAtEs"
"AbodEs"
"AbodiNg"
"AbohmmEr"
"AbohmsomE"
"AboidEAu"
"AboidEAus"
"AboidEAux"
"AboiljoiN"
"AboitEAu"
"AbrAchiA"
"AbrAchiAs"
"AbrAdAblE"
"AbrAdANt"
"AbrAdANts"
"AbrAdENN"
"AcEtifiEr"
"AcEtifiErs"
"AcEtifiEs"
"AcEtify"
"cANfulul"
"cANfuls"
"cANglENNEr"
"cANglEd"
"cANglEsiN"
"cANgliNg"
"cANguENg"
"cANguEs"
"cANiculAr"
"cANidsErvEr"
"cANidsEr"
"cANkErs"
"cANkErEd"
"dipcANkEr"
"dipchick"
"dipchicks"
"dipEptidAsE"
"dipEptidE"
"dipEptidEs"
"dipEtAlous"
"ENcArpus"
"ENcArpusEs"
"ENcAsEss"
"ENcAsEd"
"ENcAsEmENt"
"ENcAsEs"
"ENcAsh"
"ENcAshAblE"
"ENcAshEd"
"ENcAshEs"
"lukhAkE"
"hAkEANl"
"hAkEAs"
"hAkEEm"
"hAkEEms"
"hAkEssEr"
"hAkimEr"
"hAkims"
"hAkuNExt"
"hAkususA"
"hAlAchA"
"hAlAchAs"
"iNscApE"
"iNscApEs"
"iNsciENcE"
"iNsciENt"
"iNscoNcE"
"iNscoNcEd"
"NEgociANt"
"NEgociANts"
"tErrEEN"
"tErrEENs"
"tErrEllA"
"tErrEllAs"
"tErrENE"
"tErrENEs"
"upstANds"
"upstArE"
"upstArEd"
"upstArEs"
"aRchItect"
"aRchItectS"
"aRchItectuRal"
"aRchItectuRe"
"aSSeSSIng"
"aSSeSSment"
"aSSocIated"
"aSSocIateS"
"aSSocIatIon"
"attoRneyS"
"attRact"
"attRactIon"
"attRactIonS"
"attRactIve"
"authentIcatIon"
"authoR"
"authoRItIeS"
"authoRIty"
"authoRIzatIon"
"authoRIzed"
"belIefS"
"belIeve"
"belIeved"
"belIeveS"
"belIze"
"belkIn"
"bIblIogRaphIc"
"bIblIogRaphy"
"bIodIveRSIty"
"bIogRaphIeS"
"calculate"
"calculated"
"calculatIon"
"calculatIonS"
"calculatoR"
"calculatoRS"
"boulevaRd"
"bound"
"boundaRIeS"
"boundaRy"
"bIogRaphy"
"bRIStol"
"bRItaIn"
"bRItannIca"
"bRItISh"
"bRItney"
"bRoad"
"bRoadband"
"celebRatIon"
"celebRItIeS"
"ceRtaInly"
"challengeS"
"challengIng"
"chambeR"
"chaRacteRIzatIon"
"chaRacteRIzed"
"chRIStIanS"
"chRIStIna"
"chRIStIne"
"claSSIfIcatIon"
"claSSIfIed"
"claSSIfIedS"
"collectIbleS"
"collectIng"
"collectIon"
"collectIonS"
"collectIve"
"commItted"
"commIttee"
"commItteeS"
"commodItIeS"
"commodIty"
"confIdent"
"confIdentIal"
"confIdentIalIty"
"confIg"
"competIng"
"competItIon"
"competItIonS"
"competItIve"
"connectIng"
"conSequently"
"conSeRvatIon"
"conSeRvatIve"
"conSIdeR"
"conSIdeRable"
"conSIdeRatIon"
"conSIdeRatIonS"
"conSIdeRed"
"conSIdeRIng"
"connectIon"
"connectIonS"
"connectIvIty"
"connectoR"
"conStItuteS"
"conStItutIon"
"conStItutIonal"
"conStRaInt"
"conStRaIntS"
"contInueS"
"contInuIng"
"contInuIty"
"contInuouS"
"contInuouSly"
"conventIonal"
"conventIonS"
"conveRgence"
"conveRSatIon"
"conveRSatIonS"
"cReatIon"
"cReatIonS"
"cReatIve"
"cReatIvIty"
"decoRatIve"
"decReaSe"
"decReaSed"
"dedIcated"
"cReatoR"
"cReatuRe"
"cReatuReS"
"cRedIt"
"cRedItS"
"deteRmIne"
"deteRmIned"
"deteRmIneS"
"deteRmInIng"
"dIStInctIon"
"dIStInguIShed"
"dIStRIbute"
"dIStRIbuted"
"dIStRIbutIon"
"dIStRIbutIonS"
"elevatIon"
"eleven"
"elIgIbIlIty"
"elIgIble"
"elImInate"
"elImInatIon"
"expeRIenced"
"expeRIenceS"
"functIonalIty"
"functIonIng"
"functIonS"
"fRamewoRk"
"fRamIng"
"fRance"
"fRanchISe"
"fRancIS"
"expeRIencIng"
"expeRIment"
"expeRImental"
"handled"
"handleS"
"handlIng"
"IdentIfIeR"
"IdentIfIeS"
"IdentIfy"
"IdentIfyIng"
"IncoRRect"
"InItIally"
"InItIated"
"InItIatIve"
"InItIatIveS"
"InjectIon"
"InjuRed"
"IncReaSe"
"IncReaSed"
"InteRfaceS"
"InteRfeRence"
"InteRIm"
"lIteRaRy"
"lIteRatuRe"
"lIthuanIa"
"lItIgatIon"
"InteRIoR"
"manage"
"managed"
"management"
"manageR"
"manageRS"
"managIng"
"mancheSteR"
"mandate"
"mandatoRy"
"manga"
"manhattan"
"manItoba"
"manneR"
"manoR"
"manual"
"manually"
"manualS"
"manufactuRe"
"manufactuRed"
"manufactuReR"
"manufactuReRS"
"InteRmedIate"
"InteRnal"
"InteRnatIonal"
"nIcole"
"nIgeR"
"oRganISatIonS"
"oRganISed"
"oRganISmS"
"oRganIzatIon"
"oRganIzatIonal"
"oRganIzatIonS"
"oRganIze"
"oRganIzed"
"oRganIzeR"
"nIgeRIa"
"nIght"
"nIghtlIfe"
"nIghtmaRe"
"nIghtS"
"pReRequISIte"
"pReScRIbed"
"pReScRIptIon"
"pReSence"
"pReSent"
"pReSentatIon"
"pReSentatIonS"
"pReSented"
"poSItIve"
"poSSeSS"
"poSSeSSIon"
"poSSIbIlItIeS"
"poSSIbIlIty"
"poSSIble"
"poSSIbly"
"pRoduceRS"
"pRovIdeR"
"pRovIdeRS"
"pRovIdeS"
"pRovIdIng"
"pRovInce"
"pRoduceS"
"pRoducIng"
"pRoduct"
"pRoductIon"
"pRoductIonS"
"pRoductIve"
"RecoRdIngS"
"RecoRdS"
"RecoveR"
"RecoveRed"
"RecoveRy"
"RecReatIon"
"SpecIalIzed"
"SpecIalIzIng"
"SpecIally"
"SpecIalS"
"SpecIaltIeS"
"SpecIalty"
"tReaSuReR"
"tReaSuReS"
"tReaSuRy"
"tReat"
"upstAriNg"
"upstArt"
"upstArtEd"
"upstArtiNg"
"upstArts"
"upstAtE"
"upstAtEr"
"upstAtErs"
"upstAtEs"
"upstAyspot"
"upstAyEd"
"upstAyiNg"
"upstAys"
"upstEpspot"
"upstEppEd"
"upstEps")

WORDTOUSE=($(shuf -n1 -e "${LSTWORDARR[@]}"))
RANDOMNumbers=($(shuf -i 2-99 -n 1))

echo $WORDTOUSE$RANDOMNumbers > VMName.txt

echo "------------------------------------------------------------------------"
cat VMName.txt
echo "------------------------------------------------------------------------"
tmpvmname=$(cat VMName.txt)
echo $tmpvmname
echo "$tmpvmname"_group >> GroupResource.txt

# Tuy chinh VM
size=Standard_NC6s_v3
#size=Standard_B2s
priority=Spot
adminusername=azureuser
adminpassword=12345678@Abc

az group create --location $locationset --resource-group "$tmpvmname"_group
sleep 2
az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image UbuntuLTS --size $size --public-ip-sku Standard --custom-data script-bash.sh --admin-username $adminusername --admin-password $adminpassword

echo "Done"
#end command

done < "$file"
