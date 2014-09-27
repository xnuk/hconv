c=['ᄀᄁᄂᄃᄄᄅᄆᄇᄈᄉᄊᄋᄌᄍᄎᄏᄐᄑᄒ', 'ᅡᅢᅣᅤᅥᅦᅧᅨᅩᅪᅫᅬᅭᅮᅯᅰᅱᅲᅳᅴᅵ', 'ᆨᆩᆪᆫᆬᆭᆮᆯᆰᆱᆲᆳᆴᆵᆶᆷᆸᆹᆺᆻᆼᆽᆾᆿᇀᇁᇂ']
b=(a)->
	a.replace /[가-힣]/g, (a)->
		a=a.charCodeAt()-44032
		d=[]
		d.push c[2][a%28-1] if a%28 isnt 0
		a=a/28|0
		d.unshift c[1][a%21]
		a=a/21|0
		d.unshift c[0][a]
		d.join ''
@onload=->
	a=document.getElementsByTagName 'textarea'
	a[0].onkeyup=-> a[1].value=b(@value)
	a[1].onclick=-> @select()