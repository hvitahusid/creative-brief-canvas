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
            placeholder: 'Skilgreining verkefnis. Æðra hlutverk fyrirtækis – Saga fyrirtækis og vöru – Núverandi stragedía – Staða á markaði – Tækifæri á markaði, Staðsetning í huga neytandans, Það sem áður hefur verið reynt og heppnast eða misheppnast.'
        }
        {
            name: 'competition'
            label: 'SAMKEPPNI'
            icon: true
            placeholder: 'Helstu Samkeppnisaðilar – Hvað er markhópurinn líklegur til að velja framyfir vöruna og afhverju.'
        }
        {
            name: 'goals'
            label: 'MARKKMIÐ OG TILGANGUR'
            icon: true
            placeholder: '''
                Vandamál sem auglýsingaherferðin á að leysa.
                Hverjar eru ástæður þess að farið var í verkefnið. Er varan í vandræðum á markaði sem þarf að leysa? 
                Binary briefing upplýsingar. Markmið: vekja forvitni og spennu, veita upplýsingar – Fræða og kenna,  
                Heilla, kauphvatning? Hvað viljum við að fólk hugsi og finni og þar með geri.
            '''
        }
        {
            name: 'promise'
            label: 'HIÐ EINA SANNA LOFORÐ'
            icon: true
            placeholder: 'Ef það er eitthvað eitt – og aðeins eitt- sem markhópurinn þarf að vita um vöruna – hvað er það (SMP)? Hvaða staðreyndir styðja loforðið?'
        }
        {
            name: 'focusgroup'
            label: 'MARKHÓPUR'
            icon: true
            placeholder: '''
                Góð lýsing á markhóp sjá punkta.
                Eða búðu til persónu sem er fulltrúi markhópsins. Hvernig er þessi manneskja og hvað drífur hana áfram í lífinu.
            '''
        }
        {
            name: 'insight'
            label: 'INNSÆI'
            icon: true
            placeholder: 'Hvaða „sannleik” um markhópinn, markaðinn, vöruna eða notkun á vörunni væri hægt að vinna út frá. Hvaða tilfinning, menningarfyrirbæri eða gildi getur gert herferðina hnitmiðaðri – kröftugri.'
        }
        {
            name: 'strategy'
            label: 'LYKILSPURNING – STRATEGÍA'
            icon: true
            placeholder: 'Ef það er eitthvað eitt – og aðeins eitt- sem markhópurinn þarf að vita um vöruna – hvað er það (SMP)? Hvaða staðreyndir styðja loforðið?'
        }
    ]
    footer: [
        {
            name: 'media'
            label: 'Miðlar'
            icon: true
            placeholder: 'Hvers konar upplýsingar standa hér? Og hversu mikið textamagn er búist við hér?'
        }
        {
            name: 'progress'
            label: 'Árangursmæling'
            icon: true
            placeholder: 'Hvers konar upplýsingar standa hér? Og hversu mikið textamagn er búist við hér?'
        }
        {
            name: 'other'
            label: 'Annað'
            placeholder: 'Tónn, Tímamörk, Það sem þarf að hafa með eða annað sem þarf að hafa í huga…'
        }
    ]
