itsycal)
    name="Itsycal"
    type="zip"
    downloadURL=$(curl -fs https://s3.amazonaws.com/itsycal/itsycal-apple-silicon.xml | xpath '(//rss/channel/item/enclosure/@url)[1]' 2>/dev/null | head -1 | cut -d '"' -f 2)
    appNewVersion=$(curl -fs https://s3.amazonaws.com/itsycal/itsycal-apple-silicon.xml | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[1]' 2>/dev/null | head -1 | cut -d '"' -f 2)
    blockingProcesses=( "Itsycal" )
    expectedTeamID="HFT3T55WND"
    ;;
