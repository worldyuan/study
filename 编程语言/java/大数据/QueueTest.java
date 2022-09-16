import java.util.ArrayDeque;
import java.util.Queue;
import java.util.stream.IntStream;

public class QueueTest {
    public static void main(String[] args) {
        Queue<Integer> q1 = new ArrayDeque<>();

        IntStream.range(0, 17).forEach(q1::offer);

        while (true) {
            System.out.println(q1.remove());
        }
    }
}
