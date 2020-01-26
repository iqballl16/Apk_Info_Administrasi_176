
package transparan;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import usu.widget.Panel;

/**
 *
 * @author usu
 */
public class PanelTranparan extends Panel {

    /**
     * serial version UID
     */
    private static final long serialVersionUID = -1;
    private boolean round;
    private Color warna;
    private float alpha;

    /**
     * membuat panel tranparan baru
     */
    public PanelTranparan() {
        super();
        setOpaque(false);
        setOpaqueGradient(false);
        setRound(true);
        setAlpha(0.2F);
        setWarna(Color.white);
    }

    /**
     * 
     * @return
     */
    public float getAlpha() {
        return alpha;
    }

    /**
     * 
     * @param alpha
     */
    public void setAlpha(float alpha) {
        this.alpha = alpha;
        repaint();
    }

    /**
     * 
     * @return
     */
    public boolean isRound() {
        return round;
    }

    /**
     * 
     * @param round
     */
    public void setRound(boolean round) {
        this.round = round;
        repaint();
    }

    /**
     * 
     * @return
     */
    public Color getWarna() {
        if (warna == null) {
            setWarna(Color.white);
        }
        return warna;
    }

    /**
     * 
     * @param warna
     */
    public void setWarna(Color warna) {
        this.warna = warna;
        repaint();
    }

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g.create();
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g2.setComposite(AlphaComposite.SrcOver.derive(getAlpha()));
        g2.setColor(getWarna());
        if (round) {
            g2.fillRoundRect(0, 0, getWidth(), getHeight(), 50, 50);
        } else {
            g2.fillRect(0, 0, getWidth(), getHeight());
        }
        g2.dispose();

        super.paintComponent(g);
    }

    public Object getText() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setText(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
