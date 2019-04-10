function move=AIMove(difficulty, board, player)

winMove=immediateWin(board, player);

if(player==1)
    opponent=1;
else 
    opponent=2;

opponentWin=blockImmediateWin(board, opponent);

if(difficulty==1)
    if(winMove~=-1)
        move=winMove;
        return;
    elseif(opponentWin~=-1)
        move=opponentWin;
    else % maybe modify to look ahead 1 move and not move under win conditions
        move=randi(7);
    end
end     
