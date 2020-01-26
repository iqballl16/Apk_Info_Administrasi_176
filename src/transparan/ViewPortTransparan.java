
package transparan;

import java.awt.Graphics;
import javax.swing.JViewport;

/**
 *
 * @author usu
 */
public class ViewPortTransparan extends JViewport {

    private static final long serialVersionUID = -1;

    /**
     * 
     */
    public ViewPortTransparan() {
        super();
        setOpaque(false);
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
    }
}
