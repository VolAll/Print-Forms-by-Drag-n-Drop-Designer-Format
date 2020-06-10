﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	  
	ПримерЧисла = -987654.321;
	Элементы.ДекорацияЧисло.Заголовок = ПримерЧисла;
	
КонецПроцедуры

&НаКлиенте
Процедура Готово(Команда)
	Закрыть(Результат);	
КонецПроцедуры

&НаКлиенте
Процедура ПолеЧислаПриИзменении(Элемент)

	Попытка
		ЭтотОбъект["Есть"+Элемент.Имя] = Истина;
	Исключение
	КонецПопытки;
	
	Результат = "";
	
	Если ЕстьГруппировка Тогда
		Результат = Результат + "ЧГ=" + ГруппировкаЧисла + "; ";
	КонецЕсли;
	Если ЕстьДлина Тогда
		Результат = Результат + "ЧЦ=" + Длина + "; ";
	КонецЕсли;                                                                          
	Если ЕстьПредставлениеНуля Тогда
		Результат = Результат + "ЧН=" + ПредставлениеНуля + "; ";
	КонецЕсли;
	Если ЕстьПредставлениеОЧ Тогда
		Результат = Результат + "ЧО=" + ПредставлениеОЧ + "; ";
	КонецЕсли;
	Если ЕстьРазделительГрупп Тогда
		Результат = Результат + "ЧРГ=" + РазделительГрупп + "; ";
	КонецЕсли;
	Если ЕстьРазделительДЧ Тогда
		Результат = Результат + "ЧРД=" + РазделительДЧ + "; ";
	КонецЕсли;
	Если ЕстьСдвиг Тогда
		Результат = Результат + "ЧС=" + Сдвиг + "; ";
	КонецЕсли;
	Если ЕстьТочность Тогда
		Результат = Результат + "ЧДЦ=" + Точность + "; ";
	КонецЕсли;
	Если ВыводитьЛН Тогда
		Результат = Результат + "ЧВН=; ";
	КонецЕсли;
	
	Результат = Сред(Результат, 1, СтрДлина(Результат)-2);
	Элементы.ДекорацияЧисло.Заголовок = Формат(ПримерЧисла, Результат);
	
КонецПроцедуры

&НаКлиенте
Процедура ПримерЧислаПриИзменении(Элемент)
	Элементы.ДекорацияЧисло.Заголовок = Формат(ПримерЧисла, Результат);
КонецПроцедуры
