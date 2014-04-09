@fieldsets =
    top: [
        {name: 'product', label: 'Vara/Þjónusta', input: true}
        {name: 'company', label: 'Fyrirtæki', input: true}
    ]
    topSmall: [
        {name: 'connection', label: 'Tengill', input: true}
        {name: 'accepted', label: 'Samþykkt', input: true}
        {name: 'team', label: 'Teymi', input: true}
        {name: 'created', label: 'Afhending', input: true}
    ]
    main: [
        {
            name: 'background'
            n: 1
            label: 'SKILGREINING VERKEFNIS'
            icon: true
            placeholder: '''
                 - Lýsing á verkefninu
                 – Bakgrunnur vörunnar / þjónustunnar
            '''
        }
        {
            name: 'competition'
            n: 2
            label: 'SAMKEPPNI'
            icon: true
            placeholder: '''
                Staða vörunnar á markaðinum í samanburði við samkeppnisaðila
            '''
            popupPosition: 'left'
        }
        {
            name: 'goals'
            n: 3
            label: 'MARKMIÐ'
            icon: true
            placeholder: '''
                - Hver mun markaðsstaðan verða eftir auglýsingaherferðina?
                - Hvaða áhrif hafa auglýsingarnar á ímynd fyrirtækisins?
                - Hvað viljum við að fólk hugsi þegar það sér auglýsingarnar og hvað viljum við að það geri?
            '''
            popupPosition: 'left'
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


for fieldset, fields of fieldsets
    for field in fields
        field.about = Markdown[field.name] or ''
