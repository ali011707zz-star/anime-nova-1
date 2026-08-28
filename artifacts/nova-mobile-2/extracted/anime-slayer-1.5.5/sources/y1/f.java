package y1;

import android.animation.TypeEvaluator;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: ArgbEvaluator.java */
/* loaded from: classes.dex */
public class f implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public static final f f16351a = new f();

    public static f a() {
        return f16351a;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f10, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f11 = ((intValue >> 24) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f12 = ((intValue >> 16) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f13 = ((intValue >> 8) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f14 = ((intValue2 >> 24) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f15 = ((intValue2 >> 16) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float f16 = ((intValue2 >> 8) & BaseProgressIndicator.MAX_ALPHA) / 255.0f;
        float pow = (float) Math.pow(f12, 2.2d);
        float pow2 = (float) Math.pow(f13, 2.2d);
        float pow3 = (float) Math.pow((intValue & BaseProgressIndicator.MAX_ALPHA) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(f15, 2.2d);
        float f17 = f11 + ((f14 - f11) * f10);
        float pow5 = pow2 + ((((float) Math.pow(f16, 2.2d)) - pow2) * f10);
        float pow6 = pow3 + (f10 * (((float) Math.pow((intValue2 & BaseProgressIndicator.MAX_ALPHA) / 255.0f, 2.2d)) - pow3));
        return Integer.valueOf((Math.round(((float) Math.pow(pow + ((pow4 - pow) * f10), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(f17 * 255.0f) << 24) | (Math.round(((float) Math.pow(pow5, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(pow6, 0.45454545454545453d)) * 255.0f));
    }
}
