function [score] = checker_bilinear()
    bilinear_points = 30;

    [bilinear_coef, bilinear_coef_max] = test("checker_props/checker-bilinear_coef");
    printf("Bilinear coefficients: %d / %d teste trecute.\n", bilinear_coef, bilinear_coef_max);
    
    [bilinear_4point, bilinear_4point_max] = test("checker_props/checker-bilinear_4point");
    printf("Interpolate 4 points: %d / %d teste trecute.\n", bilinear_4point, bilinear_4point_max);
    
    [bilinear_resize, bilinear_resize_max] = test("checker_props/checker-bilinear_resize");
    printf("Resize image: %d / %d teste trecute.\n", bilinear_resize, bilinear_resize_max);
    
    [bilinear_4point_RGB, bilinear_4point_RGB_max] = test("checker_props/checker-bilinear_4point_RGB");
    printf("Interpolate 4 points RGB: %d / %d teste trecute.\n", bilinear_4point_RGB, bilinear_4point_RGB_max);
    
    [bilinear_resize_RGB, bilinear_resize_RGB_max] = test("checker_props/checker-bilinear_resize_RGB");
    printf("Resize RGB image: %d / %d teste trecute.\n", bilinear_resize_RGB, bilinear_resize_RGB_max);

    [rotate, rotate_max] = test("checker_props/checker-bilinear_rotate");
    printf("Rotate image: %d / %d teste trecute.\n", rotate, rotate_max);
    
    [rotate_RGB, rotate_RGB_max] = test("checker_props/checker-bilinear_rotate_RGB");
    printf("Rotate RGB image: %d / %d teste trecute.\n", rotate_RGB, rotate_RGB_max);
    
    score = bilinear_points * (bilinear_4point / bilinear_4point_max / 7 + bilinear_resize / bilinear_resize_max / 7 +
                               bilinear_4point_RGB / bilinear_4point_RGB_max / 7 + bilinear_resize_RGB / bilinear_resize_RGB_max / 7 +
                               rotate / rotate_max / 7 + rotate_RGB / rotate_RGB_max / 7 + bilinear_coef / bilinear_coef_max / 7);
    printf("Punctaj total: %.2f\n", score);
    
    fout = fopen("results", "w");
    fprintf(fout, "%.2f", score);
    fclose(fout);
endfunction
