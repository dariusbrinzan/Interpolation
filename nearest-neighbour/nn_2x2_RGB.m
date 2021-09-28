function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    red_Channel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_Channel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_Channel = img(:, :, 3);
    

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    red = nn_2x2(red_Channel, STEP);
    green = nn_2x2(green_Channel, STEP);
    blue = nn_2x2(blue_Channel, STEP);
    

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(3, red, green, blue);
    % Hint: functia cat

endfunction
