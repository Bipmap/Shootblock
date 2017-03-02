//Open the file
ini_open("highscores.ini");

//Start a loop to read the ini file's data
var s;
for (s = 0; s < 6; s += 1)
{
    highscore[s] = ini_read_string("Scores1", "score" + string(s), 999);
}

//Add the current score to the array
highscore[6] = global.score;

//Main bubble sort loop
var i, swapped;
swapped = 1;
while (swapped > 0)
{
    swapped = 0;
    for (i = 0; i < (array_length_1d(highscore)-1); i += 1)
    {
        if (real(highscore[i]) < real(highscore[i + 1]))
        {
            var k;
            k = real(highscore[i]);
            highscore[i] = real(highscore[i + 1]);
            highscore[i + 1] = k;
            swapped = 1;
        }
    }
}

//Start a loop to write to the ini from the top
var n;
for (n = 0; n < 6; n += 1)
{
    ini_write_string("Scores1", "score" + string(n), string(highscore[n]));
}

ini_close();

//Create drawing object
instance_create(x, y, obj_highscore_draw);
