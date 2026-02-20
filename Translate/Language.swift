//
//  Language.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 11/10/25.
//

func getLangOrder(lang: Lang) -> Int {
	switch lang {
		case .ru:
			return 3
		case .en:
			return 2
		default:
			return 1
	}
}

enum Lang: String, CaseIterable {
	case af
	case sq
	case am
	case ar
	case hy
	case az
	case eu
	case be
	case bn
	case bs
	case bg
	case ca
	case ce
	case ny
	case zh
	case co
	case hr
	case cs
	case da
	case nl
	case en
	case eo
	case et
	case tl
	case fi
	case fr
	case fy
	case gl
	case ka
	case de
	case el
	case gu
	case ht
	case ha
	case he
	case hi
	case hm
	case hu
	case `is`
	case ig
	case id
	case ga
	case it
	case ja
	case jw
	case kn
	case kk
	case km
	case rw
	case ko
	case ku
	case ky
	case lo
	case la
	case lv
	case lt
	case lb
	case mk
	case mg
	case ms
	case ml
	case mt
	case mi
	case mr
	case mn
	case my
	case ne
	case no
	case or
	case ps
	case fa
	case pl
	case pt
	case pa
	case ro
	case ru
	case sm
	case gd
	case sr
	case st
	case sn
	case sd
	case si
	case sk
	case sl
	case so
	case es
	case su
	case sw
	case sv
	case tg
	case ta
	case tt
	case te
	case th
	case tr
	case tk
	case uk
	case ur
	case ug
	case uz
	case vi
	case cy
	case xh
	case yi
	case yo
	case zu
};

//enum Lang: String, CaseIterable {
//	case af = "Африкаанс"
//	case sq = "Албанский"
//	case am = "Амхарский"
//	case ar = "Арабский"
//	case hy = "Армянский"
//	case az = "Азербайджанский"
//	case eu = "Баскский"
//	case be = "Белорусский"
//	case bn = "Бенгальский"
//	case bs = "Боснийский"
//	case bg = "Болгарский"
//	case ca = "Каталанский"
//	case ce = "Себуанский"
//	case ny = "Чичева"
//	case zh = "Китайский"
//	case co = "Корсиканский"
//	case hr = "Хорватский"
//	case cs = "Чешский"
//	case da = "Датский"
//	case nl = "Нидерландский"
//	case en = "Английский"
//	case eo = "Эсперанто"
//	case et = "Эстонский"
//	case tl = "Филиппинский"
//	case fi = "Финский"
//	case fr = "Французский"
//	case fy = "Фризский"
//	case gl = "Галисийский"
//	case ka = "Грузинский"
//	case de = "Немецкий"
//	case el = "Греческий"
//	case gu = "Гуджарати"
//	case ht = "Гаитянский"
//	case ha = "Хауса"
//	case he = "Иврит"
//	case hi = "Хинди"
//	case hm = "Хмонг"
//	case hu = "Венгерский"
//	case `is` = "Исландский"
//	case ig = "Игбо"
//	case id = "Индонезийский"
//	case ga = "Ирландский"
//	case it = "Итальянский"
//	case ja = "Японский"
//	case jw = "Яванский"
//	case kn = "Каннада"
//	case kk = "Казахский"
//	case km = "Кхмерский"
//	case rw = "Киньяруанда"
//	case ko = "Корейский"
//	case ku = "Курдский"
//	case ky = "Киргизский"
//	case lo = "Лаосский"
//	case la = "Латинский"
//	case lv = "Латышский"
//	case lt = "Литовский"
//	case lb = "Люксембургский"
//	case mk = "Македонский"
//	case mg = "Малагасийский"
//	case ms = "Малайский"
//	case ml = "Малаялам"
//	case mt = "Мальтийский"
//	case mi = "Маори"
//	case mr = "Маратхи"
//	case mn = "Монгольский"
//	case my = "Бирманский"
//	case ne = "Непальский"
//	case no = "Норвежский"
//	case or = "Ория"
//	case ps = "Пушту"
//	case fa = "Персидский"
//	case pl = "Польский"
//	case pt = "Португальский"
//	case pa = "Панджаби"
//	case ro = "Румынский"
//	case ru = "Русский"
//	case sm = "Самоанский"
//	case gd = "Шотландский"
//	case sr = "Сербский"
//	case st = "Сесото"
//	case sn = "Шона"
//	case sd = "Синдхи"
//	case si = "Сингальский"
//	case sk = "Словацкий"
//	case sl = "Словенский"
//	case so = "Сомалийский"
//	case es = "Испанский"
//	case su = "Сунданский"
//	case sw = "Суахили"
//	case sv = "Шведский"
//	case tg = "Таджикский"
//	case ta = "Тамильский"
//	case tt = "Татарский"
//	case te = "Телугу"
//	case th = "Тайский"
//	case tr = "Турецкий"
//	case tk = "Туркменский"
//	case uk = "Украинский"
//	case ur = "Урду"
//	case ug = "Уйгурский"
//	case uz = "Узбекский"
//	case vi = "Вьетнамский"
//	case cy = "Валлийский"
//	case xh = "Коса"
//	case yi = "Идиш"
//	case yo = "Йоруба"
//	case zu = "Зулу"
//};
