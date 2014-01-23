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
            n: 1
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
            n: 2
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
            n: 3
            label: 'MARKMIÐ OG HLUTVERK AUGLÝSINGANNA'
            icon: true
            placeholder: '''
                Hvað er verkefnið sem þarf að leysa og hvaða hindranir
                 þarf að yfirstíga til að ná því?
            '''
        }
        {
            name: 'promise'
            n: 4
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
            n: 5
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
            n: 6
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
            n: 7
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
            placeholder: '''
                Hér þarf að kalla til samskiptavið og fá þeirra innsæi.
            '''
        }
        {
            name: 'progress'
            label: 'Árangursmæling'
            placeholder: '''
                Kaup, skráningar, eftirtekt. Mismunandi eftir verkefnum.
            '''
        }
        {
            name: 'other'
            label: 'Annað'
            placeholder: '''
                Budget. Tónn. Annað sem þarf að hafa í huga en kemur ekki fram
                 annars staðar í briefi.
            '''
        }
    ]
