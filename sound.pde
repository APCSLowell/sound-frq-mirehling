public int limitAmplitude(int limit)
{
    int c = 0;

    for (int i = 0; i < samples.length; i++)
    {
        if (samples[i] > limit)
        {
            samples[i] = limit;
            c++;
        }
        else if (samples[i] < -limit)
        {
            samples[i] = -limit;
            c++;
        }
    }

    return numChanges;
}
public void trimSilenceFromBeginning()
{
    int a = 0;

    while(samples[a] == 0)
        a++;

    int[] b = new int[samples.length - a];

    for(int i = a; i < samples.length; i++)
        b[i - a] = samples[i];

    samples = b;
}
