function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    red_Channel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_Channel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_Channel = img(:, :, 3);


    % TODO: aplică rotația pe fiecare canal al imaginii
    red = bilinear_rotate(red_Channel, rotation_angle);
    green = bilinear_rotate(green_Channel, rotation_angle);
    blue = bilinear_rotate(blue_Channel, rotation_angle);
    

    % TODO: reconstruiește imaginea RGB finala (hint: cat)
    
    out = cat(3, red, green, blue);
    
endfunction