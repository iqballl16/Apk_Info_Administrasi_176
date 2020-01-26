
package transparan;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import org.jdesktop.animation.timing.Animator;
import org.jdesktop.animation.timing.interpolation.PropertySetter;
import usu.util.GraphicsUtilities;

/**
 *
 * @author usu
 */
public class ButtonImageReflection extends JButton {

    private static final long serialVersionUID = 1L;
    private boolean over;
    private boolean press;
    private Animator animation;
    private int percent;
    private BufferedImage image;
    private Color dark = new Color(1F, 1F, 1F, 0f);
    private Color light = new Color(1F, 1F, 1F, 0.4F);

    /**
     * 
     * @return
     * @deprecated 
     */
    @Deprecated
    public int getPercent() {
        return percent;
    }

    /**
     * 
     * @param percent
     * @deprecated 
     */
    @Deprecated
    public void setPercent(int percent) {
        this.percent = percent;
        repaint();
    }

    private boolean isOver() {
        return over;
    }

    private void setOver(boolean over) {
        this.over = over;
        repaint();
    }

    private boolean isPress() {
        return press;
    }

    private void setPress(boolean press) {
        this.press = press;
        repaint();
    }

    /**
     * 
     */
    public ButtonImageReflection() {
        super();
        super.setContentAreaFilled(false);
        super.setBorderPainted(false);
        setFocusPainted(false);
        setHorizontalTextPosition(JButton.CENTER);
        setVerticalTextPosition(JButton.BOTTOM);
        setFont(getFont().deriveFont(Font.BOLD));
        setForeground(Color.white);
        setUpAnimation();
        setOpaque(false);
        addMouseListener(new MouseAdapter() {

            @Override
            public void mouseEntered(MouseEvent e) {
                super.mouseEntered(e);
                setOver(true);
                if (!animation.isRunning()) {
                    setPercent(-20);
                    animation.start();
                }
            }

            @Override
            public void mouseExited(MouseEvent e) {
                super.mouseExited(e);
                setOver(false);
            }

            @Override
            public void mousePressed(MouseEvent e) {
                super.mousePressed(e);
                setPress(true);
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                super.mouseReleased(e);
                setPress(false);
            }
        });
    }

    @Override
    public void setContentAreaFilled(boolean b) {
        super.setContentAreaFilled(false);
    }

    @Override
    public void setBorderPainted(boolean b) {
        super.setBorderPainted(false);
    }

    @Override
    protected void paintComponent(Graphics g) {
        Shape s = new RoundRectangle2D.Double(0, 0, getWidth(), getHeight(), 50, 50);
        Graphics2D g2 = (Graphics2D) g.create();
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        if (isOver()) {
            if (isPress()) {
                GradientPaint paint = new GradientPaint(0, getHeight() - getHeight() * 3 / 4, dark, 0, getHeight(), light);
                g2.setPaint(paint);
                g2.fillRoundRect(0, 0, getWidth(), getHeight(), 50, 50);
            } else {
                GradientPaint paint = new GradientPaint(0, 0, light, 0, getHeight() * 3 / 4, dark);
                g2.setPaint(paint);
                g2.fillRoundRect(0, 0, getWidth(), getHeight(), 50, 50);
            }
        }

        super.paintComponent(g);

        if (animation.isRunning()) {
            g2.setClip(s);
            g2.setColor(new Color(1f, 1f, 1f, 0.3f));
            g2.fillRect(0, getHeight() * getPercent() / 100, getWidth(), getHeight() * 20 / 100);
            g2.dispose();
        }
    }

    @Override
    public void setIcon(Icon defaultIcon) {
        if (defaultIcon instanceof ImageIcon) {
            ImageIcon icon = (ImageIcon) defaultIcon;
            image = GraphicsUtilities.convertToBufferedImageReflection(icon.getImage());
            icon = new ImageIcon(image);
            super.setIcon(icon);
        } else {
            super.setIcon(defaultIcon);
        }
    }

    /**
     * 
     */
    private void setUpAnimation() {
        animation = new Animator(300);
        animation.addTarget(new PropertySetter(this, "percent", 120));
    }
}
