// scrCheshireFrameTicks() — количество номинальных шагов по 1/60 секунды
// за прошедший кадр. Нужен для точных 19 с / 1,4 с и при bullet time.
var _ticks = delta_time * (60 / 1000000);
if (_ticks <= 0)
{
    _ticks = 1;
}
return _ticks;
