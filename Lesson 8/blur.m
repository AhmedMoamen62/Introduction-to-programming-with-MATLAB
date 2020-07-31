function out = blur(img,w)
out = uint8(zeros(size(img)));
img = double(img);
kernel_width = 2*w + 1;
kernel_mid = ceil(kernel_width/2);
kernel = zeros(kernel_width, kernel_width);
kernel(:,:) = 1/(kernel_width*kernel_width);

for row = 1:size(img,1)
    start_row_img = row - kernel_mid;
    for col = 1:size(img,2)
        start_col_img = col - kernel_mid;
        pixel_value = 0;
        mean_count = 0;
        for kernel_row = 1:kernel_width
            if start_row_img + kernel_row < 1 || start_row_img + kernel_row > size(out,1)
                continue;
            end
            for kernel_col = 1:kernel_width
                if start_col_img + kernel_col < 1 || start_col_img + kernel_col > size(out,2)
                    continue;
                end
                mean_count = mean_count + 1;
                pixel_value = pixel_value + kernel(kernel_row,kernel_col)*img(start_row_img+kernel_row,start_col_img+kernel_col);
            end
        end
        out(row,col) = uint8(pixel_value*((kernel_width*kernel_width)/mean_count));
    end
end
end

% Another solution
% function out = blur(img,w)
%     % convert to double for doing calculations
%     imgD = double(img);
%     [row, col] = size(img);
%     out = zeros(row, col);
%     for ii = 1:row
%         for jj = 1:col
%             % Get the indices for a submatrix
%             r1 = ii-w;
%             r2 = ii+w;
%             c1 = jj-w;
%             c2 = jj+w;
%             % Test that indices are valid
%             % If not, set to min/max that is valid
%             if r1 < 1
%                 r1 = 1;
%             end
%             if r2 > row
%                 r2 = row;
%             end
%             if c1 < 1
%                 c1 = 1;
%             end
%             if c2 > col
%                 c2 = col;
%             end
%             % Get the submatrix and assign the mean to the output pixel
%             m = imgD(r1:r2, c1:c2);
%             out(ii,jj) = mean(m(:));
%         end
%     end
%     % convert back to uint8
%     out = uint8(out);
% end