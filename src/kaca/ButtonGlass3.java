package kaca;




import com.wury.swingutil.EfekGlass;
import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import javax.swing.ImageIcon;
import javax.swing.JButton;


public class ButtonGlass3 extends JButton{
    public ButtonGlass3(){
         super();
        setFocusPainted(false);
        setBorderPainted(false);
        setContentAreaFilled(false);
        
    }
    
      @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        final Color light = new Color(1F, 1F, 1F,0.8F);
        final Color dark = new Color(1F, 1F, 1F,0F);
        final GradientPaint paint = new GradientPaint(0, 0, light, 0, getHeight(), dark);
        final RoundRectangle2D.Double kotak = new RoundRectangle2D.Double(0, 0, getWidth(), getHeight(), 50, 50);
        
        final Graphics2D gd = (Graphics2D)g.create();
        gd.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        gd.setPaint(paint);
        gd.fill(kotak);
        super.paintComponent(g);
    }
}
