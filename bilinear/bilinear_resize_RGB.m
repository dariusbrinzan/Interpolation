function out = bilinear_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    red_Channel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_Channel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_Channel = img(:, :, 3);


    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    red = bilinear_resize(red_Channel, p, q);
    green = bilinear_resize(green_Channel, p, q);
    blue = bilinear_resize(blue_Channel, p, q);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(p, red, green, blue);
    % Hint: functia cat

endfunction