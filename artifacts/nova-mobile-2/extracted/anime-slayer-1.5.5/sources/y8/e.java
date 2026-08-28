package y8;

import android.graphics.Color;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.util.List;
import y8.j;

/* compiled from: BarLineScatterCandleBubbleDataSet.java */
/* loaded from: classes.dex */
public abstract class e<T extends j> extends i<T> implements c9.b<T> {

    /* renamed from: x, reason: collision with root package name */
    public int f16735x;

    public e(List<T> list, String str) {
        super(list, str);
        this.f16735x = Color.rgb(BaseProgressIndicator.MAX_ALPHA, 187, 115);
    }

    @Override // c9.b
    public int X() {
        return this.f16735x;
    }
}
