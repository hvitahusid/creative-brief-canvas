@fieldsets =
    top: [
        {name: 'product', label: 'Vara/Þjónusta', input: true}
        {name: 'company', label: 'Fyrirtæki', input: true}
    ]
    topSmall: [
        {name: 'connection', label: 'Tengill', input: true}
        {name: 'accepted', label: 'Samþykkt', input: true}
        {name: 'team', label: 'Teymi', input: true}
        {name: 'created', label: 'Fæðing', input: true}
    ]
    main: [
        {
            name: 'background'
            label: 'BAKGRUNNUR VÖRU OG MARKAÐSSTAÐA'
            icon: true
            placeholder: '''
                Æðra hlutverk fyrirtækis – Saga fyrirtækis, vöru eða þjónustu
                 – Núverandi strategía – Staða og tækifæri á markaði – Staða í
                 huga neytandans – Það sem áður hefur verið reynt og heppnast
                 eða misheppnast.
            '''
        }
        {
            name: 'competition'
            label: 'SAMKEPPNI'
            icon: true
            placeholder: '''
                Helstu samkeppnisaðilar. Hvað er markhópurinn líklegur
                 til að velja fram yfir vöruna og afhverju?<br><br>

                 Samkeppni þarf ekki endilega að vera frá öðrum vörum eða
                 fyrirtækjum. Hreyfing er í samkeppni við hreyfingarleysi.
                 Hollusta er í samkeppni við sætindi.
            '''
        }
        {
            name: 'goals'
            label: 'MARKMIÐ OG HLUTVERK AUGLÝSINGANNA'
            icon: true
            placeholder: '''
                Verkefni sem eru skilgreind sem vandamál virkabest.
                 Þess vegna er verkefni viðskiptavinarins sett fram sem vandamál
                 sem þarf að leysa.<br><br>

                 Markhópurinn þekkir ekki…? Hvernig getum við breytt viðhorfi
                 fólks til…?<br><br>

                 Hvað er líklegt til að koma í veg fyrir að markhópurinn breyti
                 hegðun sinni? Hvernig getum við rutt úr vegi þeim hindrunum?
                 <br><br>

                 Hvað er verkefnið sem þarf að leysa og hvaða hindranir þarf að
                 yfirstíga til að ná því?<br><br>

                 Að skilgreina og setja verkefnið fram sem vandamál sem þarf að
                 leysa setur hugann strax af stað í að finna lausnir.
            '''
        }
        {
            name: 'promise'
            label: 'LOFORÐIÐ'
            icon: true
            placeholder: '''
                Hvað er það mikilvægasta sem markhópurinn þarf að vita um
                 vöruna, þjónustuna eða fyrirtækið? Hvaða staðreyndir styðja
                 loforðið.<br><br>

                 Eitt loforð = Ein setning
            '''
        }
        {
            name: 'focusgroup'
            label: 'MARKHÓPUR'
            icon: true
            placeholder: '''
                Það er engin ein rétt nálgun í því að skilgreina og kynna sér
                 markhópinn. Hins vegar er mikilvægt að gögn séu skoðuð og
                 markhópnum sé lýst á skýran hátt.<br><br>

                 Hafa í huga að allir=enginn og jafnvel þótt markhópurinn sé
                 mjög stór þá er alltaf hægt að skilgreina hann á einhvern hátt.
                 <br><br>

                 [Nánar í ítarefni]
            '''
        }
        {
            name: 'insight'
            label: 'INNSÆI'
            icon: true
            placeholder: '''
                Hvaða fullyrðingu um markhópinn, markaðinn, vöruna eða notkun á
                 vörunni er hægt að vinna út frá? Hvaða tilfinning eða
                 menningarfyrirbæri getur nýtst í herferðinni?
            '''
        }
        {
            name: 'strategy'
            label: 'LYKILSPURNING'
            icon: true
            placeholder: '''
                Spurning sem inniheldur lykilloforð og innsæi. Ein setning,
                 í mesta lagi tvær.<br><br>

                 Ef spurningin inniheldur „og/eða“ þá þarf að skipta henni upp í
                 tvö brief. Annars er hún of löng og/eða óskýr.
            '''
        }
    ]
    footer: [
        {
            name: 'media'
            label: 'Miðlar'
            icon: true
            placeholder: '''
                Hvers konar upplýsingar standa hér? Og hve miklum texta er búist
                 við?
            '''
        }
        {
            name: 'progress'
            label: 'Árangursmæling'
            icon: true
            placeholder: '''
                Hvers konar upplýsingar standa hér? Og hve miklum texta er búist
                 við?
            '''
        }
        {
            name: 'other'
            label: 'Annað'
            placeholder: '''
                Tónn, Tímamörk; Það sem þarf að hafa með eða annað sem þarf að
                 hafa í huga…
            '''
        }
    ]
