# Конспект источников: Position, velocity and acceleration

- Стадия: 1 — извлечение.
- Назначение: зафиксировать содержание источников без проектирования новой колоды.
- Язык источников: английский.
- Формат источников: PowerPoint PDF, 16:9, с текстовым слоем.

## Обозначения источников

- **S** — `Lab 1  Position, velocity and acceleration (w\o answers).pdf`, 11 страниц, версия без ответов.
- **A** — `Lab 1  Position, velocity and acceleration (w\ answers).pdf`, 30 страниц, версия с ответами.

Оригинальные файлы в `source/` не изменялись. Русские значения полей `Title`
и `Author` относятся только к метаданным Microsoft PowerPoint; содержание слайдов
англоязычное.

## Структурное соответствие версий

| Содержание | Без ответов | С ответами |
|---|---:|---:|
| Титул | S1 | A1 |
| Краткий обзор кинематики | S2–S3 | A2–A3 |
| Задача 1 | S4 | A4; решение A5 |
| Задача 2(a) | S5 | A6; решение A7 |
| Задача 2(b) | S6 | A8; решение A9 |
| Задача 3 | S7 | A10; решение и пояснения A11–A14 |
| Задача 4 | S8 | A15; решение A16–A18 |
| Задача 5 | S9 | A19; решения A20–A22 |
| Задача 6 | S10 | A23; решения A24–A25 |
| Задача 7 | S11 | A26; решения A27–A30 |

## Заявленный контекст

- `Physics 1. Mechanics/Practice session`.
- `Week 1`.
- Тема: `Position, velocity and acceleration`.
- Явные цели обучения, продолжительность, критерии оценивания и требования к
  отчёту в источнике отсутствуют.
- Материал является практическим занятием с задачами, а не описанием
  экспериментальной установки.

## Цели обучения

Явно сформулированных целей обучения в источнике нет. По составу материала можно
сделать только следующие **интерпретации**, которые не считаются утверждёнными
целями будущей презентации:

- связывать координату, скорость и ускорение через производные и интегралы;
- решать задачи равномерного относительного движения и движения с постоянным
  ускорением;
- интегрировать заданное во времени ускорение;
- определять скорость по наклону графика координаты или пути;
- различать перемещение и пройденный путь;
- исследовать движение по аналитически заданной координате.

## Теоретический минимум

Источник вводит или повторяет следующие соотношения для одномерного движения
(S2–S3, A2–A3):

1. Средняя скорость и среднее ускорение:
   \[
     \langle v\rangle=\frac{\Delta x}{\Delta t},
     \qquad
     \langle a\rangle=\frac{\Delta v}{\Delta t}.
   \]
2. Мгновенные скорость и ускорение:
   \[
     v=\frac{dx}{dt},
     \qquad
     a=\frac{dv}{dt}.
   \]
3. В источнике фраза «distance covered» сопровождается формулой
   \[
     s=\int v\,dt.
   \]
4. Для произвольного ускорения:
   \[
     S(T)=S_i+\int_0^T V(t)\,dt,
     \qquad
     V(T)=V_i+\int_0^T a(t)\,dt,
   \]
   \[
     S(T)=S_i+V_iT+\int_0^Tdt\int_0^t a(h)\,dh.
   \]
5. Для постоянного ускорения источник приводит
   \[
     S(T)=S_i+V_iT+\frac{at^2}{2}.
   \]

Обозначения источника: `S_i` — начальная координата, `V_i` — начальная
скорость, `T` — текущее время, `t` и `h` — переменные интегрирования.

## Точные формулировки заданий

Ниже приведена английская транскрипция формулировок из студенческой версии.
Переносы строк нормализованы, математические символы набраны заново; смысл,
числовые данные и запрашиваемые величины не редактировались.

1. “Two trains black material points (MPs), each having a speed of
   \(V_b=30\,\mathrm{km/h}\), are headed at each other on the same straight
   track. A bird white MP that can fly \(V_w=60\,\mathrm{km/h}\) flies off the
   front of one train black MP when they are \(60\,\mathrm{km}\) apart and
   heads directly for the other train black MP. On reaching the other train
   black MP, the (crazy) bird white MP flies directly back to the first train
   black MP, and so forth. What is the total distance the bird white MP travels
   before the trains MPs collide?” (S4)
2. “A cheetah is the fastest land mammal, and it can run at speeds of about
   \(101\,\mathrm{km/h}\) for a period of perhaps \(20\,\mathrm{s}\). The next
   fastest land animal is an antelope, which can run at about
   \(88\,\mathrm{km/h}\) for a much longer time. Suppose a cheetah is chasing
   an antelope, and both are running at top speed. (a) If the antelope has a
   \(40\)-m head start, how long will it take the cheetah to catch him, and how
   far will the cheetah travel in this time? (b) What is the maximum head start
   the antelope can have if the cheetah is to catch him within \(20\,\mathrm{s}\)
   (at which time the cheetah runs out of breath)?” (S5–S6)
3. “A motorist traveling \(31\,\mathrm{m/s}\) passes a stationary motorcycle
   police officer. \(2.5\,\mathrm{s}\) after the motorist passes, the police
   officer starts to move and accelerates in pursuit of the speeding motorist.
   The motorcycle has constant acceleration of \(3.6\,\mathrm{m/s^2}\).
   (a) How fast will the police officer be traveling when he overtakes the car?
   Draw curves of \(x\) versus \(t\) for both the motorcycle and the car,
   taking \(t=0\) at the moment the car passes the stationary police officer.”
   (S7)
4. “Find the maximum speed \(v_{\max}\) and the dependence of the distance on
   time \(x(t)\) in the time interval \([0,\infty)\) in the case of the
   non-constant acceleration \(a(t)=a_0\exp(-t/\tau)\). Assume that the initial
   velocity is zero.” (S8)
5. “A point moves rectilinearly in one direction. The figure shows the distance
   \(S\) traversed by the point as a function of time \(t\). Using the plot
   find: (a) the average velocity of the point during the time of motion;
   (b) the maximum velocity; (c) the time moment \(t_0\) at which the
   instantaneous velocity is equal to the mean velocity averaged over the first
   \(t_0\) seconds.” (S9; the three requests are embedded in the raster figure)
6. “An elevator car whose floor-to-ceiling distance is equal to
   \(2.7\,\mathrm{m}\) starts ascending with constant acceleration
   \(1.2\,\mathrm{m/s^2}\); \(2.0\,\mathrm{s}\) after the start a bolt begins
   falling from the ceiling of the car. Find: (a) the bolt's free fall time;
   (b) the displacement and the distance covered by the bolt during the free
   fall in the reference frame fixed to the elevator shaft.” (S10)
7. “The position of a particle moving along an \(x\) axis is given by
   \(x(t)=12t^2-2t^3\), where \(x\) is in meters and \(t\) is in seconds.
   Determine (a) the position, (b) the velocity, and (c) the acceleration of the
   particle at \(t=3.0\,\mathrm{s}\). (d) What is the maximum positive
   coordinate reached by the particle and (e) at what time is it reached?
   (f) What is the maximum positive velocity reached by the particle and
   (g) at what time is it reached? (h) What is the acceleration of the particle
   at the instant the particle is not moving (other than at \(t=0\))?
   (i) Determine the average velocity of the particle between \(t=0\) and
   \(t=3\,\mathrm{s}\).” (S11)

## Задачи и ответы

### 1. Встречные поезда и птица

Условие (S4, A4): два поезда, моделируемые материальными точками, движутся
навстречу друг другу по одной прямой со скоростями
\(V_b=\SI{30}{\kilo\metre\per\hour}\). Начальное расстояние между ними
\(S=\SI{60}{\kilo\metre}\). Птица летает между поездами со скоростью
\(V_w=\SI{60}{\kilo\metre\per\hour}\). Требуется найти полный путь птицы до
столкновения поездов.

Решение источника (A5):
\[
  t_b=\frac{S/2}{V_b}=\SI{1}{\hour}=t_w,
  \qquad
  S_w=V_wt_w=\SI{60}{\kilo\metre}.
\]

Ответ источника: \(\SI{60}{\kilo\metre}\).

### 2. Погоня гепарда за антилопой

Условие (S5–S6, A6 и A8): скорость гепарда
\(\SI{101}{\kilo\metre\per\hour}\), скорость антилопы
\(\SI{88}{\kilo\metre\per\hour}\); гепард способен поддерживать максимальную
скорость примерно \(\SI{20}{\second}\).

- (a) При форе антилопы \(\SI{40}{\metre}\) найти время поимки и путь гепарда.
- (b) Найти максимальную фору, при которой поимка произойдёт не позднее чем
  через \(\SI{20}{\second}\).

Решение источника (A7, A9) использует
\[
  x_C=v_Ct=x_A+40,
  \qquad
  x_A=v_At,
  \qquad
  t=\frac{40}{v_C-v_A},
\]
и округления \(v_C=\SI{28}{\metre\per\second}\),
\(v_A=\SI{24.4}{\metre\per\second}\).

Ответы, явно показанные в источнике:

- (a) \(t=\SI{11.1}{\second}\); требуемый в условии путь гепарда отдельным
  числом на слайде решения не указан.
- (b) \(h=(v_C-v_A)t=\SI{72}{\metre}\).

### 3. Автомобиль и полицейский мотоцикл

Условие (S7, A10): автомобиль движется с постоянной скоростью
\(v_c=\SI{31}{\metre\per\second}\). Неподвижный мотоциклист начинает погоню
через \(\SI{2.5}{\second}\) с постоянным ускорением
\(a=\SI{3.6}{\metre\per\second\squared}\). Требуется найти скорость
мотоциклиста при обгоне и построить графики \(x(t)\) обоих объектов, считая
\(t=0\) моментом проезда автомобиля мимо мотоциклиста.

Решение источника (A11–A14):
\[
  x_c=v_ct,
  \qquad
  x_m=\frac12a(t-2.5)^2,
\]
\[
  \frac12a(t'-2.5)^2=v_ct',
  \qquad
  1.8(t')^2-40t'+11.25=0.
\]
Получены корни \(t'\approx\SI{0.28}{\second}\) и
\(t'\approx\SI{21.9}{\second}\). Первый корень отвергается, поскольку он
предшествует началу движения мотоцикла. Затем
\[
  v_m=a(t'-\SI{2.5}{\second})\approx\SI{69.8}{\metre\per\second}.
\]

Ответ источника: \(\SI{69.8}{\metre\per\second}\) при
\(t'\approx\SI{21.9}{\second}\).

### 4. Экспоненциально убывающее ускорение

Условие (S8, A15): при
\[
  a(t)=a_0\exp(-t/\tau), \qquad t\in[0,\infty), \qquad v(0)=0
\]
найти максимальную скорость и зависимость пройденного расстояния от времени.

Решение источника (A16–A18):
\[
  v(t)=a_0\tau\left(1-e^{-t/\tau}\right),
\]
\[
  x(t)=a_0\tau t+a_0\tau^2\left(e^{-t/\tau}-1\right),
\]
\[
  v_{\max}=\lim_{t\to\infty}v(t)=a_0\tau.
\]
Для \(t\gg\tau\) источник последовательно показывает приближения
\[
  x(t)\approx a_0\tau(t-\tau)\approx a_0\tau t=v_{\max}t.
\]

### 5. Чтение графика пути

Условие (S9, A19): точка движется прямолинейно в одном направлении; дан график
\(S(t)\), где вертикальная ось подписана \(S\) в метрах, горизонтальная —
\(t\) в секундах. По графику требуется найти:

- (a) среднюю скорость за всё время движения;
- (b) максимальную скорость;
- (c) момент \(t_0\), когда мгновенная скорость равна средней скорости за
  первые \(t_0\) секунд.

Ответы источника (A20–A22):

- (a) \(\bar v=\frac{\SI{200}{\centi\metre}}{\SI{20}{\second}}
  =\SI{10}{\centi\metre\per\second}\);
- (b) по максимальному наклону касательной
  \(v_{\max}=\frac{\SI{100}{\centi\metre}}{\SI{4}{\second}}
  =\SI{25}{\centi\metre\per\second}\);
- (c) касательная к графику должна проходить через начало координат, чтобы
  \(dS/dt=S/t_0\); по рисунку \(t_0=\SI{16}{\second}\).

### 6. Болт в ускоряющемся лифте

Условие (S10, A23): высота кабины \(h=\SI{2.7}{\metre}\), лифт начинает
подниматься с постоянным ускорением \(w=\SI{1.2}{\metre\per\second\squared}\).
Через \(\SI{2.0}{\second}\) после старта болт начинает падать с потолка.
Требуется найти (a) время падения и (b) перемещение и полный путь болта в
системе отсчёта шахты лифта.

Решение источника (A24–A25): в системе лифта относительное ускорение болта
равно \(-(g+w)\), поэтому
\[
  t=\sqrt{\frac{2h}{g+w}}\approx\SI{0.7}{\second}.
\]
В системе шахты начальная скорость болта
\[
  v_0=w\cdot\SI{2.0}{\second}=\SI{2.4}{\metre\per\second}.
\]
При направлении оси вверх источник получает
\[
  \Delta y=v_0t-\frac12gt^2\approx-\SI{0.7}{\metre},
\]
\[
  s=|\Delta y|+2\frac{v_0^2}{2g}\approx\SI{1.3}{\metre}.
\]

Ответы источника: \(\SI{0.7}{\second}\), перемещение
\(-\SI{0.7}{\metre}\), путь \(\SI{1.3}{\metre}\).

### 7. Движение, заданное координатой

Условие (S11, A26):
\[
  x(t)=12t^2-2t^3,
\]
где \(x\) измеряется в метрах, \(t\) — в секундах. Требуется найти:
координату, скорость и ускорение при \(t=\SI{3.0}{\second}\); максимальную
положительную координату и момент её достижения; максимальную положительную
скорость и соответствующий момент; ускорение в ненулевой момент остановки;
среднюю скорость на интервале от 0 до \(\SI{3}{\second}\).

Решение источника (A27–A30):
\[
  v(t)=24t-6t^2,
  \qquad
  a(t)=24-12t.
\]

Ответы источника:

- (a) \(x(3)=\SI{54}{\metre}\);
- (b) \(v(3)=\SI{18}{\metre\per\second}\);
- (c) \(a(3)=-\SI{12}{\metre\per\second\squared}\);
- (d), (e) \(x_{\max}=x(4)=\SI{64}{\metre}\) при
  \(t=\SI{4}{\second}\);
- (f), (g) \(v_{\max}=v(2)=\SI{24}{\metre\per\second}\) при
  \(t=\SI{2}{\second}\);
- (h) \(a(4)=-\SI{24}{\metre\per\second\squared}\);
- (i) \(\bar v=[x(3)-x(0)]/(3-0)=\SI{18}{\metre\per\second}\).

## Визуальные элементы источника

- S4/A4: временная схема движения поездов и птицы.
- S5–S6/A6–A9: графики координат гепарда и антилопы, фотографии животных.
- S7/A10: фотографии автомобиля и мотоцикла; A11–A13: схематические графики
  \(x_c(t)\) и \(x_m(t)\).
- A15–A18: графики \(a/a_0\) и \(v/(a_0\tau)\) от \(t/\tau\).
- S9/A19: растровый график \(S(t)\) с построениями касательных на A20–A22.
- S10/A23–A25: схема кабины лифта и траектории болта.
- A27–A30: совмещённые графики \(x(t)\), \(v(t)\), \(a(t)\) и вспомогательной
  прямой для средней скорости.

Происхождение фотографий и растрового графика в PDF не указано. Решение об их
повторном использовании или замене на TikZ относится к следующей стадии.

## Аппаратура, процедура и безопасность

Источник не описывает реальный эксперимент, лабораторное оборудование,
измерительную процедуру, неопределённости или требования безопасности. Он
содержит теоретический обзор и семь расчётно-графических задач.

## Неясности и расхождения, требующие последующей проверки

1. Пользователь обозначил материал как лабораторную, тогда как источник называет
   его `Mechanics/Practice session` и не содержит эксперимента.
2. Источник местами смешивает термины position, displacement и distance. Формула
   \(\int v\,dt\) задаёт изменение координаты, а не полный путь при произвольном
   знаке скорости.
3. В формуле постоянного ускорения на A3/S3 одновременно используются \(T\) и
   \(t\): \(S(T)=S_i+V_iT+at^2/2\).
4. В задаче 2(a) спрашивается путь гепарда, но отдельный числовой ответ на A7
   отсутствует. Его нельзя считать явно данным источником.
5. В задаче 3 один из корней уравнения лежит до момента старта мотоцикла; источник
   специально обсуждает его физическую недопустимость. На одном слайде также
   встречается смешение обозначений \(t\) и \(t'\).
6. В задаче 4 значение \(a_0\tau\) достигается только асимптотически. Начальная
   координата явно не сформулирована, хотя интегрирование выполнено как для
   \(x(0)=0\).
7. В задаче 5 ответы записаны в сантиметрах, хотя ось исходного графика подписана
   в метрах; численные значения согласуются после перевода единиц.
8. В задаче 6 значение \(g\) не задано явно, но численные ответы соответствуют
   стандартному земному ускорению примерно \(\SI{9.8}{\metre\per\second\squared}\).

На стадии 1 эти пункты только зафиксированы; исправления, редакционные решения и
новая структура ещё не выбирались.
