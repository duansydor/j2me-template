import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class Main extends MIDlet {
    public void startApp() {
        Canvas canvas = new Canvas() {
            protected void paint(Graphics g) {
                // Fundo preto (bem Dark/Emo como você curte)
                g.setColor(0, 0, 0);
                g.fillRect(0, 0, getWidth(), getHeight());
                
                // Texto de boas-vindas
                g.setColor(255, 255, 255);
                g.drawString("J2ME Ready!", getWidth()/2, getHeight()/2, Graphics.HCENTER | Graphics.TOP);
            }
        };
        Display.getDisplay(this).setCurrent(canvas);
    }
    public void pauseApp() {}
    public void destroyApp(boolean u) {}
}
