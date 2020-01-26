
package transparan;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JFormattedTextField;
import javax.swing.border.EmptyBorder;

/**
 *
 * @author usu
 */
public class FormatedTextBox extends JFormattedTextField {

    private static final long serialVersionUID = -1;

    /**
     * 
     */
    public FormatedTextBox() {
        super();
        setOpaque(false);
        setBorder(new EmptyBorder(5, 10, 5, 10));
        setHorizontalAlignment(CENTER);
        addMouseListener(new MouseAdapter() {

            @Override
            public void mouseEntered(MouseEvent e) {
                setCursor(Cursor.getPredefinedCursor(Cursor.TEXT_CURSOR));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
            }
        });
    }

    @Override
    protected void paintComponent(Graphics g) {
        if (isEnabled()) {
            Graphics2D g2 = (Graphics2D) g.create();
            g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

            super.paintComponent(g);

            Color dark = new Color(1F, 1F, 1F, 0F);
            Color light = new Color(1F, 1F, 1F, 0.3F);
            GradientPaint paint = new GradientPaint(0, 0, light, 0, getHeight() / 2, dark);
            g2.setPaint(paint);
            g2.fillRoundRect(0, 0, getWidth(), getHeight(), getHeight(), getHeight());
            g2.setColor(Color.BLACK);
            g2.drawRoundRect(0, 0, getWidth() - 1, getHeight() - 1, getHeight(), getHeight());

            g2.dispose();
        } else {
            Graphics2D g2 = (Graphics2D) g.create();
            g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

            super.paintComponent(g);

            Color light = new Color(1F, 1F, 1F, 0.3F);
            g2.setColor(light);
            g2.fillRoundRect(0, 0, getWidth(), getHeight(), getHeight(), getHeight());
            g2.setColor(Color.BLACK);
            g2.drawRoundRect(0, 0, getWidth() - 1, getHeight() - 1, getHeight(), getHeight());

            g2.dispose();
        }
    }
}
