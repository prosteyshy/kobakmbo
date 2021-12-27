#ДАНО: Робот находится в произвольной клетке ограниченного прямоугольного поля без внутренних перегородок и маркеров.
#РЕЗУЛЬТАТ: Робот — в исходном положении в центре прямого креста из маркеров, расставленных вплоть до внешней рамки.
function drawKrest(r)
    temper = temperature(r)
    list = (Nord, Sud, Nord,  Ost, West, Ost)
    pos = 0

    for el in list
        pos += 1
        
        while !isborder(r, el)

            if pos%3==0 && temperature(r) == temper
                break
            end

            putmarker!(r)
            move!(r, el)

        end

        putmarker!(r)       
    end
end
