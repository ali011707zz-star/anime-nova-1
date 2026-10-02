package g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ComplexColorCompat.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Shader f6719a;

    /* renamed from: b, reason: collision with root package name */
    public final ColorStateList f6720b;

    /* renamed from: c, reason: collision with root package name */
    public int f6721c;

    public d(Shader shader, ColorStateList colorStateList, int i10) {
        this.f6719a = shader;
        this.f6720b = colorStateList;
        this.f6721c = i10;
    }

    public static d a(Resources resources, int i10, Resources.Theme theme) throws IOException, XmlPullParserException {
        int next;
        XmlResourceParser xml = resources.getXml(i10);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.hashCode();
            if (name.equals("gradient")) {
                return d(f.b(resources, xml, asAttributeSet, theme));
            }
            if (name.equals("selector")) {
                return c(c.b(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static d b(int i10) {
        return new d(null, null, i10);
    }

    public static d c(ColorStateList colorStateList) {
        return new d(null, colorStateList, colorStateList.getDefaultColor());
    }

    public static d d(Shader shader) {
        return new d(shader, null, 0);
    }

    public static d g(Resources resources, int i10, Resources.Theme theme) {
        try {
            return a(resources, i10, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    public int e() {
        return this.f6721c;
    }

    public Shader f() {
        return this.f6719a;
    }

    public boolean h() {
        return this.f6719a != null;
    }

    public boolean i() {
        ColorStateList colorStateList;
        return this.f6719a == null && (colorStateList = this.f6720b) != null && colorStateList.isStateful();
    }

    public boolean j(int[] iArr) {
        if (i()) {
            ColorStateList colorStateList = this.f6720b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f6721c) {
                this.f6721c = colorForState;
                return true;
            }
        }
        return false;
    }

    public void k(int i10) {
        this.f6721c = i10;
    }

    public boolean l() {
        return h() || this.f6721c != 0;
    }
}
