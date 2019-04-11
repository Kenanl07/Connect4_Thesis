function gWinDp = posDCheck(boardArr,startRow,startCol,playNum)
    k = startRow;
    l = startCol;
    BsizeDp = size(boardArr);
    rowsDp = BsizeDp(1);
    countDp = 0;
    gWinDp = false;
    while(k < rowsDp && l >= 2)
        if( boardArr(k,l)==playNum && boardArr(k+1,l-1)==playNum)
                countDp = countDp +1;
                
                if (countDp >= 3)
                    gWinDp = true;
                end
            else
                countDp = 0;
        end
        k = k+1;
        l = l-1;
    end
end