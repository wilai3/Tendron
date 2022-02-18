public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        ArrayList <Tendril> a = new ArrayList <Tendril>();
        for (int i = 0; i < NUM_STEMS; i++){
          a.add(new Tendril(len, 2*(i)*(PI)/7, x, y));
        }
        for (int i = 0; i < NUM_STEMS; i++){
          a.get(i).show();
        }
    }
}
