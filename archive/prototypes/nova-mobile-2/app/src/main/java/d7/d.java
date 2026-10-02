package d7;

import android.content.Context;
import com.anslayer.R;
import java.util.ArrayList;
import java.util.List;
import jc.l;
import y8.m;

/* compiled from: BarChartUtil.kt */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f5712a = new d();

    public final List<m> a(Context context, l4.a aVar) {
        l.f(context, "context");
        l.f(aVar, "animeListCount");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new m(aVar.c(), context.getString(R.string.nav_my_favourites) + " : " + aVar.c()));
        arrayList.add(new m((float) aVar.f(), context.getString(R.string.nav_my_anime_watching) + " : " + aVar.f()));
        arrayList.add(new m((float) aVar.d(), context.getString(R.string.nav_my_anime_planning) + " : " + aVar.d()));
        arrayList.add(new m((float) aVar.e(), context.getString(R.string.nav_my_anime_finished) + " : " + aVar.e()));
        arrayList.add(new m((float) aVar.b(), context.getString(R.string.on_hold) + " : " + aVar.b()));
        arrayList.add(new m((float) aVar.a(), context.getString(R.string.nav_my_anime_dropped) + " : " + aVar.a()));
        return arrayList;
    }
}
