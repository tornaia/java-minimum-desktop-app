import javax.swing.*;

public class FooClient {

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            JFrame frame = new JFrame("HelloWorld");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setSize(320, 200);
            frame.toFront();
            frame.setVisible(true);
        });
    }
}
