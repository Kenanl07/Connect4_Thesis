function move=AIMove(difficulty, board)

[winCol, winRow]=immediateWin(board);

[loseCol, loseRow]=blockImmediateWin(board);

if(difficulty==1)
    if(winCol~=-1)
        if(winRow==canPlayHere(winCol, board))
            move=winCol;
        end
    elseif(loseCol~=-1)
        if(loseRow==canPlayHere(loseCol, board))
            move=loseCol;
        end
    else % maybe modify to look ahead 1 move and not move under win conditions
        move=randi(7);
    end
end     