import android.graphics.*;
import com.ahsim.demulation.DuneSegaHud;
import java.io.FileOutputStream;

public class HudTest {
  public static void main(String[] args) throws Exception {
    Bitmap bmp = Bitmap.createBitmap(432, 960, Bitmap.Config.ARGB_8888);
    Canvas c = new Canvas(bmp);
    c.drawColor(0xff0d0c09);
    Paint panel = new Paint();
    Paint line = new Paint();
    RectF radar = new RectF(104f, 640f, 360f, 896f);
    RectF[] r = new RectF[3];
    for (int i = 0; i < 3; i++) {
      r[i] = new RectF();
      DuneSegaHud.aboveRadarRect(radar, 1f, i, r[i]);
    }
    int[] icons = {2, 0, 1};
    for (int i = 0; i < 3; i++) {
      DuneSegaHud.drawHudButton(c, r[i], icons[i], false, panel, line);
    }
    Paint p = new Paint();
    p.setStyle(Paint.Style.STROKE);
    p.setStrokeWidth(5f);
    p.setColor(0xffc9a25d);
    c.drawRect(radar, p);
    FileOutputStream out = new FileOutputStream("/data/local/tmp/hud.png");
    bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
    out.close();
    System.out.println("RECTS " + r[0] + " " + r[1] + " " + r[2]);
  }
}
