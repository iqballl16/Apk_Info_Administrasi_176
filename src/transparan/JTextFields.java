/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package transparan;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.text.Document;

public class JTextFields extends JTextField{
    public JTextFields() {
        super();
        setOpaque(false);
        setBorder(new EmptyBorder(5, 5, 5, 5));
        setHorizontalAlignment(CENTER);
        initListener();
    }

    private String placeholder = "";

    public JTextFields(String text) {
        super(text);
        initListener();
    }

    public JTextFields(int columns) {
        super(columns);
        initListener();
    }

    public JTextFields(String text, int columns) {
        super(text, columns);
        initListener();
    }

    public JTextFields(Document doc, String text, int columns) {
        super(doc, text, columns);
        initListener();
    }

    private void initListener() {
        addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                super.keyPressed(e);
                repaint();
            }
        });
    }

    public String getPlaceholder() {
        setHorizontalAlignment(CENTER);
        return placeholder;
    }

    public void setPlaceholder(String placeholder) {
        this.placeholder = placeholder;
        repaint();
    }
    
    
    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g.create();
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

        super.paintComponent(g);
        
        if (getText().trim().equals("")) {
            Font font = getFont().deriveFont(Font.BOLD).deriveFont(Font.ITALIC);

            Graphics2D g2d = (Graphics2D) g;
            FontMetrics fontMetrics = g2d.getFontMetrics(font);
            g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            g2d.setColor(Color.WHITE);
            g2d.setFont(font);

            java.awt.geom.Rectangle2D rect = fontMetrics.getStringBounds(placeholder, g2d);
            int textHeight = (int) rect.getHeight();
            g2d.drawString(placeholder, 7, textHeight + 5);
        }

        Color dark = new Color(1F, 1F, 1F, 0F);
        Color light = new Color(1F, 1F, 1F, 0.3F);
        GradientPaint paint = new GradientPaint(0, 0, light, 0, getHeight() / 2, dark);
        g2.setPaint(paint);
        g2.fillRoundRect(0, 0, getWidth(), getHeight(), getHeight(), getHeight());
        g2.setColor(Color.WHITE);
        g2.drawRoundRect(0, 0, getWidth() - 1, getHeight() - 1, getHeight(), getHeight());

        g2.dispose();
        
    }
}
